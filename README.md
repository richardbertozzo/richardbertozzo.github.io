<h1 align="center">
    <img alt="Lumen" title="Lumen" src="https://github.com/alxshelepenok/gatsby-starter-lumen/blob/gatsby-v2/.github/logo.png" width="140"> </br>
    Lumen
</h1>

<h4 align="center">
  A minimal, lightweight and mobile-first starter for creating blogs uses <a href="https://github.com/gatsbyjs/gatsby" target="_blank">Gatsby</a>.
</h4>

<p align="center">
    <a target="_blank" href="https://circleci.com/gh/alxshelepenok/gatsby-starter-lumen"><img src="https://circleci.com/gh/alxshelepenok/gatsby-starter-lumen.svg?style=svg"></a> <a target="_blank" href="https://codecov.io/gh/alxshelepenok/gatsby-starter-lumen"><img src="https://codecov.io/gh/alxshelepenok/gatsby-starter-lumen/branch/master/graph/badge.svg"></a> <a target="_blank" href="https://www.codacy.com/app/alxshelepenok/gatsby-starter-lumen?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=alxshelepenok/gatsby-starter-lumen&amp;utm_campaign=Badge_Grade"><img src="https://api.codacy.com/project/badge/Grade/f7e27bb3a28a46a6b13453a02801c5c9"></a> <a target="_blank" href="https://codeclimate.com/github/alxshelepenok/gatsby-starter-lumen"><img src="https://img.shields.io/codeclimate/maintainability/alxshelepenok/gatsby-starter-lumen.svg"></a> <a href="https://app.fossa.io/projects/git%2Bgithub.com%2Falxshelepenok%2Fgatsby-starter-lumen?ref=badge_shield" alt="FOSSA Status"><img src="https://app.fossa.io/api/projects/git%2Bgithub.com%2Falxshelepenok%2Fgatsby-starter-lumen.svg?type=shield"/></a>
</p>

## Table of contents
+ [Features](http://github.com/alxshelepenok/gatsby-starter-lumen#features)
+ [Web Performance Tests](http://github.com/alxshelepenok/gatsby-starter-lumen#web-performance-tests)
+ [Quick Start](http://github.com/alxshelepenok/gatsby-starter-lumen#quick-start)
+ [Deploy with Netlify](http://github.com/alxshelepenok/gatsby-starter-lumen#deploy-with-netlify)
+ [Folder Structure](http://github.com/alxshelepenok/gatsby-starter-lumen#folder-structure)
+ [Related](http://github.com/alxshelepenok/gatsby-starter-lumen#related)
+ [Contributors](http://github.com/alxshelepenok/gatsby-starter-lumen#contributors)
+ [Backers](http://github.com/alxshelepenok/gatsby-starter-lumen#backers)
+ [Sponsors](http://github.com/alxshelepenok/gatsby-starter-lumen#sponsors)
+ [Credits](http://github.com/alxshelepenok/gatsby-starter-lumen#credits)
+ [License](http://github.com/alxshelepenok/gatsby-starter-lumen#license)

## Features
+ [Lost Grid](http://lostgrid.org).
+ [Modern font stack](https://bitsofco.de/the-new-system-font-stack).
+ Beautiful typography inspired by [matejlatin/Gutenberg](https://github.com/matejlatin/Gutenberg).
+ Syntax highlighting in code blocks using [PrismJS](http://prismjs.com).
+ [Mobile-First](https://medium.com/@mrmrs_/mobile-first-css-48bc4cc3f60f) approach in development.
+ Archive organized by tags and categories.
+ Pagination support.
+ [Netlify CMS](https://www.netlifycms.org) support.
+ Google Analytics.
+ Disqus Comments.
+ [Flow](https://flow.org/) static type checking.

## Web Performance Tests
+ Lighthouse Report - [WebPageTest](https://www.webpagetest.org/result/190510_FE_3f2b13d0beed320f477467d433f56f43/)
+ Visual Comparison - [WebPageTest](https://www.webpagetest.org/video/compare.php?tests=190510_KZ_1228c343ccf04148619a5d0b89a41f71,190510_RE_b3bfad442f32c690a9f420fe46025b8d,190510_RS_3b5f0bff2d95161351dc6934cadbf1cf,190510_SC_5c458c451941f81b12911ccf4171a817,190510_63_52d5edd8743773815fbacb2e9c66d228,190510_AS_741b29f5af5a6e54980d82826d7bb5bb)

## Quick Start

#### Create a Gatsby site

Use the Gatsby CLI to create a new site, specifying the Lumen starter.

```sh
# Create a new Gatsby site using the Lumen starter
gatsby new blog https://github.com/alxshelepenok/gatsby-starter-lumen
```

#### Start Developing

Navigate into your new site’s directory and start it up.

```sh
cd blog
gatsby develop
```

#### Open the source code and start editing!

Your site is now running at `http://localhost:8000`!

Note: You'll also see a second link: `http://localhost:8000/___graphql`. This is a tool you can use to experiment with querying your data. Learn more about using this tool in the [Gatsby tutorial](https://www.gatsbyjs.org/tutorial/part-five/#introducing-graphiql).

Open the `blog` directory in your code editor of choice and edit `src/templates/index-template.js`. Save your changes and the browser will update in real time!

## Deploy with Netlify

[Netlify](https://netlify.com) CMS can run in any frontend web environment, but the quickest way to try it out is by running it on a pre-configured starter site with Netlify. Use the button below to build and deploy your own copy of the repository:

<a href="https://app.netlify.com/start/deploy?repository=https://github.com/alxshelepenok/gatsby-starter-lumen" target="_blank"><img src="https://www.netlify.com/img/deploy/button.svg" alt="Deploy to Netlify"></a>

After clicking that button, you’ll authenticate with GitHub and choose a repository name. Netlify will then automatically create a repository in your GitHub account with a copy of the files from the template. Next, it will build and deploy the new site on Netlify, bringing you to the site dashboard when the build is complete. Next, you’ll need to set up Netlify’s Identity service to authorize users to log in to the CMS.

## Deploy to Github Pages

To deploy to github pages, simply do the following:

- Ensure that your `package.json` file correctly reflects where this repo lives
- Change the `pathPrefix` in your `config.js`
- Run the standard deploy command

```sh
npm run deploy
```

#### Access Locally
```
$ git clone https://github.com/[GITHUB_USERNAME]/[REPO_NAME].git
$ cd [REPO_NAME]
$ yarn
$ npm run develop
```
To test the CMS locally, you'll need run a production build of the site:
```
$ npm run build
$ gatsby serve
```

## Folder Structure

```
└── content
    ├── pages
    └── posts
└── static
    ├── admin
    └── media
└── src
    ├── assets
    │   └── scss
    │       ├── base
    │       └── mixins
    ├── cms
    │   └── preview-templates
    ├── components
    │   ├── Feed
    │   ├── Icon
    │   ├── Layout
    │   ├── Page
    │   ├── Pagination
    │   ├── Post
    │   │   ├── Author
    │   │   ├── Comments
    │   │   ├── Content
    │   │   ├── Meta
    │   │   └── Tags
    │   └── Sidebar
    │       ├── Author
    │       ├── Contacts
    │       ├── Copyright
    │       └── Menu
    ├── constants
    ├── templates
    └── utils

```

## License
The MIT License (MIT)

Copyright (c) 2016-2020 Alexander Shelepenok

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
