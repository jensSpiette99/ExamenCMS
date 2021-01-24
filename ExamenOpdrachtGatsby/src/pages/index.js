import React from "react"
import {useStaticQuery, graphql} from "gatsby"
import Layout from "../components/Layout"
import SEO from "../components/Seo"
import {Wrapper,Image, BottomEdgeDown,BottomEdgeUp, Artist} from '../pageStyles/pageStyles'
import {COLORS} from '../constants'

const IndexPage = () => {

  const {wpcontent:{
    page:{
      homeMeta:{
        description,
        title,
        featuredFilm,
        bannerImage
      }
    }
  }} = useStaticQuery(graphql`
  query{
    wpcontent{
      page(id: "home page", idType: URI) {
        homeMeta {
          description
          title
          featuredFilm {
            ... on WPGraphql_Film {
              slug
              film {
                title
                description
                regiseur
                review
                image {
                  altText
                  sourceUrl
                  imageFile{
                    childImageSharp{
                     fluid(quality:100) {
                    ...GatsbyImageSharpFluid_withWebp
                }
              }
            }
                }
              }
            }
          }
          bannerImage {
            altText
            sourceUrl
            imageFile{
              childImageSharp{
                fluid(quality:100) {
                  ...GatsbyImageSharpFluid_withWebp
                }
              }
            }
          }
        }
      }
    }
  }
  `)
  return(
  <Layout>
    <SEO title="Home" />
    <Wrapper>
      <div className="banner">
        <Image fluid={bannerImage.imageFile.childImageSharp.fluid} alt={bannerImage.altText}/>
        <div className="inner-div">
          <p className="header-title">{title}</p>         
        </div>
        <BottomEdgeDown color={COLORS.BLACK}></BottomEdgeDown>
        </div>
        <div className="description">
        <p>{description}</p>
        <BottomEdgeUp color={COLORS.PRIMARY}></BottomEdgeUp>
        </div>
        <div className="artists">
          <h2>Featured Films</h2>
          <div className="artist-items">
          {featuredFilm.map(({ film, slug }) => (
              <Artist key={slug} to={`/${slug}`}>
                <Image
                  fluid={film.image.imageFile.childImageSharp.fluid} alt={film.altText}
                />
                <div className="artist-info">
                  <p>
                    {film.title}
                  </p>
                </div>
              </Artist>
              ))}
        </div>
      </div>
    </Wrapper>
  </Layout>
  )
}

export default IndexPage
