#!/bin/bash

gch antora/antora --gitlab
gch antora/antora-atlas-extension --gitlab
gch antora/antora-collector-extension --gitlab
gch spring-io/antora-extensions --include-my-fork
gch antora/antora-ui-default --gitlab
gch spring-io/antora-ui-spring --include-my-fork
gch spring-io/antora-xref-extension --include-my-fork
gch spring-io/antora-zip-contents-collector-extension --include-my-fork
gch asciidoctor/asciidoctor
gch spring-io/asciidoctor-extensions  --include-my-fork
gch spring-gradle-plugins/dependency-management-plugin --eclipse
gch spring-io/github-changelog-generator --wiki --eclipse
gch reactor/reactor-core --eclipse
gch spring-projects/spring-aot-smoke-tests --eclipse
gch spring-projects/spring-boot --wiki --eclipse --worktree --include-my-fork
gch spring-projects/spring-framework --wiki --eclipse --worktree --include-my-fork
gch spring-projects/spring-graphql --eclipse
gch spring-projects/spring-grpc --eclipse
gch spring-io/initializr --eclipse --include-my-fork
gch spring-io/spring-javaformat --eclipse --include-my-fork
gch spring-projects/spring-modulith --eclipse
gch spring-projects/spring-petclinic --eclipse
gch spring-projects/spring-release-checklist --eclipse
gch spring-projects/spring-restdocs --eclipse
gch philwebb/spring-userscripts
gch spring-io/spring-website
gch spring-io/spring-website-content
gch spring-io/spring-website-commercial-content
gch spring-io/start.spring.io --eclipse
