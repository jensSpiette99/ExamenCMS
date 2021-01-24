import React from "react"
import {graphql} from "gatsby"
import Layout from "../components/Layout"
import SEO from "../components/Seo"
import {Wrapper,Image} from "./templateStyles/filmStyles"
const FilmTemplate = ({
    data:{
        wpcontent:{
            film:{
                film,
                roles:{edges: roles},
            },
        },
    },
}) =>{
    
    
    return <Layout>
        <SEO title="Film"/>
        <Wrapper>
            <div className="artist-container">
                <div className="artist-image">
                <Image fluid={film.image.imageFile.childImageSharp.fluid}/>
                <div className="roles">
                   {roles.map(({node: role})=>(
                       <div className="role">{role.name}</div>
                   ))}
                    
                    
                </div>
                </div>
                <div className="artist-info">
                    <h2>{film.title}</h2>
                    <br/>
                    <p className="description">{film.description}</p>
                    <br/>
                    <p>Regiseur: {film.regiseur}</p>
                    <br/>
                    <p>Jaar van uitgave: {film.releasedate}</p>
                    <br/>
                    <p>Review: {film.review}/10</p>
                </div>
            </div>

           
        </Wrapper>
    </Layout>
}

export default FilmTemplate

export const pageQuery = graphql`
query($id: ID!) {
    wpcontent {
        film(id: $id, idType: ID) {
          roles {
            edges {
              node {
                name
              }
            }
          }
          film {
            description
            regiseur
            releasedate
            review
            title
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
}
`