<template>
<p v-if="error">Something went wrong...</p>
  <p v-if="loading">Loading...</p>
  <p v-else v-for="project in result.projects" :key="project.id">
    {{ project.title }}
  </p>
  <nav>
    <router-link to="/">Home</router-link> |
    <router-link to="/about">About</router-link>
  </nav>
  <router-view />
</template>

<script>
import gql from "graphql-tag";
import { useQuery } from "@vue/apollo-composable";

const PROJECTS_QUERY = gql`
  query Projects {
    projects {
    id
    title
  }
  }
`;

export default {
  name: "App",
  setup() {
    const { result, loading, error } = useQuery(PROJECTS_QUERY);
    return {
      result,
      loading,
      error,
    };
  },
};
</script>

<style lang="scss">
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

nav {
  padding: 30px;

  a {
    font-weight: bold;
    color: #2c3e50;

    &.router-link-exact-active {
      color: #42b983;
    }
  }
}
</style>
