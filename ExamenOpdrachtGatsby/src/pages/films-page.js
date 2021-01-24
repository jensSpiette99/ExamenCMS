import React from 'react'
import {useStaticQuery , graphql} from "gatsby"

import Layout from "../components/Layout"
import SEO from "../components/Seo"
import {
    Wrapper,
    Image,
    BottomEdgeDown,
    BottomEdgeUp,
    Artist
} from "./pageStyles/pageStyles"

import {COLORS} from "../constants"

const FilmsPage = () =>{
    const {wpcontent:{
        page:{
            filmsMeta:{
            description,
            bannerImage
            }
        },
        films:{edges: films}
    }} = useStaticQuery(graphql`
    query{
        wpcontent{
            page(id: "films page", idType: URI) {
                filmsMeta {
                  description
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
            films {
                edges {
                  node {
                    film {
                      description
                      regiseur
                      review
                      title
                      releasedate
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
                    slug
                  }
                }
            }
        }
    }
    `)
    
    return<Layout>
    <SEO title="films"/>
    <Wrapper>
    <div className="banner">
    <Image
    fluid={bannerImage.imageFile.childImageSharp.fluid}
    />
    <BottomEdgeDown color={COLORS.BLACK}/>
    </div>
    <div className="description">
        <p>{description}</p>
    <BottomEdgeUp color={COLORS.PRIMARY}/>
    </div>
    <div className="artists">
        <h2>onze film collectie</h2>
        <div className="artist-items">
            {films.map(({node : {film,slug}}) =>(
                <Artist to={`/${slug}`} key={slug}>
                    <Image fluid={film.image.imageFile.childImageSharp.fluid} />
                    <div className="artist-info">
                        <p>{film.title}</p>
                    </div>
                </Artist>
            ))}
        </div>
    </div>
    </Wrapper>
    </Layout>
  
  
    
}
export default FilmsPage