# Looker API 4.0 (Beta) Reference
#
#  Welcome to the future! API 4.0 co-exists with APIs 3.1 and 3.0. (3.0 should no longer be used.) The \"beta\" tag means updates for API 4.0 may include breaking changes, but as always we will work to minimize them.  ### Authorization  The classic method of API authorization uses Looker **API3** credentials for authorization and access control. Looker admins can create API3 credentials on Looker's **Admin/Users** page.  API 4.0 adds additional ways to authenticate API requests, including OAuth and CORS requests.  For details, see [Looker API Authorization](https://looker.com/docs/r/api/authorization).   ### API Explorer  The API Explorer is a Looker-provided utility with many new and unique features for learning and using the Looker API and SDKs. It is a replacement for the 'api-docs' page currently provided on Looker instances.  For details, see the [API Explorer documentation](https://looker.com/docs/r/api/explorer).   ### Looker Language SDKs  The Looker API is a RESTful system that should be usable by any programming language capable of making HTTPS requests. SDKs for a variety of programming languages are also provided to streamline using the API. Looker has an OpenSource [sdk-codegen project](https://github.com/looker-open-source/sdk-codegen) that provides several language SDKs. Language SDKs generated by `sdk-codegen` have an Authentication manager that can automatically authenticate API requests when needed.  For details on available Looker SDKs, see [Looker API Client SDKs](https://looker.com/docs/r/api/client_sdks).   ### API Versioning  Future releases of Looker expand the latest API version release-by-release to securely expose more and more of the core power of the Looker platform to API client applications. API endpoints marked as \"beta\" may receive breaking changes without warning (but we will try to avoid doing that). Stable (non-beta) API endpoints should not receive breaking changes in future releases.  For details, see [Looker API Versioning](https://looker.com/docs/r/api/versioning).   ### In This Release  API 4.0 version was introduced so we can make adjustments to API functions, parameters, and response types to fix bugs and inconsistencies. These changes fall outside the bounds of non-breaking additive changes we can make to our stable API 3.1.  One benefit of these type adjustments in API 4.0 is dramatically better support for strongly typed languages like TypeScript, Kotlin, Swift, Go, C#, and more.  While API 3.1 is still the de-facto Looker API (\"current\", \"stable\", \"default\", etc), the bulk of our development activity has shifted to API 4.0, where all new features are added.  The API Explorer can be used to [interactively compare](https://looker.com/docs/r/api/explorer#comparing_api_versions) the differences between API 3.1 and 4.0.   ### API and SDK Support Policies  Looker API versions and language SDKs have varying support levels. Please read the API and SDK [support policies](https://looker.com/docs/r/api/support-policy) for more information.   
#
# OpenAPI spec version: 4.0.21.18
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' RoleSearch Class
#'
#' @field can 
#' @field id 
#' @field name 
#' @field permission_set 
#' @field permission_set_id 
#' @field model_set 
#' @field model_set_id 
#' @field user_count 
#' @field url 
#' @field users_url 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite parse_json toJSON
#' @export
RoleSearch <- R6::R6Class(
  'RoleSearch',
  public = list(
    `can` = NULL,
    `id` = NULL,
    `name` = NULL,
    `permission_set` = NULL,
    `permission_set_id` = NULL,
    `model_set` = NULL,
    `model_set_id` = NULL,
    `user_count` = NULL,
    `url` = NULL,
    `users_url` = NULL,
    initialize = function(`can`, `id`, `name`, `permission_set`, `permission_set_id`, `model_set`, `model_set_id`, `user_count`, `url`, `users_url`){
      if (!missing(`can`)) {
        self$`can` <- `can`
      }
      if (!missing(`id`)) {
        stopifnot(is.numeric(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`permission_set`)) {
        stopifnot(R6::is.R6(`permission_set`))
        self$`permission_set` <- `permission_set`
      }
      if (!missing(`permission_set_id`)) {
        stopifnot(is.numeric(`permission_set_id`), length(`permission_set_id`) == 1)
        self$`permission_set_id` <- `permission_set_id`
      }
      if (!missing(`model_set`)) {
        stopifnot(R6::is.R6(`model_set`))
        self$`model_set` <- `model_set`
      }
      if (!missing(`model_set_id`)) {
        stopifnot(is.numeric(`model_set_id`), length(`model_set_id`) == 1)
        self$`model_set_id` <- `model_set_id`
      }
      if (!missing(`user_count`)) {
        stopifnot(is.numeric(`user_count`), length(`user_count`) == 1)
        self$`user_count` <- `user_count`
      }
      if (!missing(`url`)) {
        stopifnot(is.character(`url`), length(`url`) == 1)
        self$`url` <- `url`
      }
      if (!missing(`users_url`)) {
        stopifnot(is.character(`users_url`), length(`users_url`) == 1)
        self$`users_url` <- `users_url`
      }
    },
    toJSON = function() {
      RoleSearchObject <- list()
      if (!is.null(self$`can`)) {
        RoleSearchObject[['can']] <- self$`can`
      }
      if (!is.null(self$`id`)) {
        RoleSearchObject[['id']] <- self$`id`
      }
      if (!is.null(self$`name`)) {
        RoleSearchObject[['name']] <- self$`name`
      }
      if (!is.null(self$`permission_set`)) {
        RoleSearchObject[['permission_set']] <- self$`permission_set`$toJSON()
      }
      if (!is.null(self$`permission_set_id`)) {
        RoleSearchObject[['permission_set_id']] <- self$`permission_set_id`
      }
      if (!is.null(self$`model_set`)) {
        RoleSearchObject[['model_set']] <- self$`model_set`$toJSON()
      }
      if (!is.null(self$`model_set_id`)) {
        RoleSearchObject[['model_set_id']] <- self$`model_set_id`
      }
      if (!is.null(self$`user_count`)) {
        RoleSearchObject[['user_count']] <- self$`user_count`
      }
      if (!is.null(self$`url`)) {
        RoleSearchObject[['url']] <- self$`url`
      }
      if (!is.null(self$`users_url`)) {
        RoleSearchObject[['users_url']] <- self$`users_url`
      }

      RoleSearchObject
    },
    fromJSONObject = function(RoleSearchJsonObject) {
      RoleSearchObject <- RoleSearchJsonObject #jsonlite::fromJSON(RoleSearchJson, simplifyVector = FALSE)
      if (!is.null(RoleSearchObject$`can`)) {
        self$`can` <- RoleSearchObject$`can`
      }
      if (!is.null(RoleSearchObject$`id`)) {
        self$`id` <- RoleSearchObject$`id`
      }
      if (!is.null(RoleSearchObject$`name`)) {
        self$`name` <- RoleSearchObject$`name`
      }
      if (!is.null(RoleSearchObject$`permission_set`)) {
        permission_setObject <- PermissionSet$new()
        permission_setObject$fromJSON(jsonlite::toJSON(RoleSearchObject$permission_set, auto_unbox = TRUE))
        self$`permission_set` <- permission_setObject
      }
      if (!is.null(RoleSearchObject$`permission_set_id`)) {
        self$`permission_set_id` <- RoleSearchObject$`permission_set_id`
      }
      if (!is.null(RoleSearchObject$`model_set`)) {
        model_setObject <- ModelSet$new()
        model_setObject$fromJSON(jsonlite::toJSON(RoleSearchObject$model_set, auto_unbox = TRUE))
        self$`model_set` <- model_setObject
      }
      if (!is.null(RoleSearchObject$`model_set_id`)) {
        self$`model_set_id` <- RoleSearchObject$`model_set_id`
      }
      if (!is.null(RoleSearchObject$`user_count`)) {
        self$`user_count` <- RoleSearchObject$`user_count`
      }
      if (!is.null(RoleSearchObject$`url`)) {
        self$`url` <- RoleSearchObject$`url`
      }
      if (!is.null(RoleSearchObject$`users_url`)) {
        self$`users_url` <- RoleSearchObject$`users_url`
      }
    },
    fromJSON = function(RoleSearchJson) {
      RoleSearchObject <- jsonlite::fromJSON(RoleSearchJson, simplifyVector = FALSE)
      self$fromJSONObject(RoleSearchObject)
    },
    toJSONString = function() {
       sprintf(
        '{
           "can": %s,
           "id": %d,
           "name": %s,
           "permission_set": %s,
           "permission_set_id": %d,
           "model_set": %s,
           "model_set_id": %d,
           "user_count": %d,
           "url": %s,
           "users_url": %s
        }',
        self$`can`,
        self$`id`,
        self$`name`,
        self$`permission_set`$toJSON(),
        self$`permission_set_id`,
        self$`model_set`$toJSON(),
        self$`model_set_id`,
        self$`user_count`,
        self$`url`,
        self$`users_url`
      )
    },
    fromJSONString = function(RoleSearchJson) {
      RoleSearchObject <- jsonlite::fromJSON(RoleSearchJson, simplifyVector = FALSE)
      self$`can` <- RoleSearchObject$`can`
      self$`id` <- RoleSearchObject$`id`
      self$`name` <- RoleSearchObject$`name`
      PermissionSetObject <- PermissionSet$new()
      self$`permission_set` <- PermissionSetObject$fromJSON(jsonlite::toJSON(RoleSearchObject$permission_set, auto_unbox = TRUE))
      self$`permission_set_id` <- RoleSearchObject$`permission_set_id`
      ModelSetObject <- ModelSet$new()
      self$`model_set` <- ModelSetObject$fromJSON(jsonlite::toJSON(RoleSearchObject$model_set, auto_unbox = TRUE))
      self$`model_set_id` <- RoleSearchObject$`model_set_id`
      self$`user_count` <- RoleSearchObject$`user_count`
      self$`url` <- RoleSearchObject$`url`
      self$`users_url` <- RoleSearchObject$`users_url`
    }
  )
)