CREATE 
// Entities: States
(nrw:State {name: 'Nordrhein-Westfalen', population: 18139116, area: 34110.26, state_capital: 'Düsseldorf'}), 
(hessen:State {name: 'Hessen', population: 6391360, area: 21114.94, state_capital: 'Wiesbaden'}), 
(rlp:State {name: 'Rheinland-Pfalz', population: 4159150, area: 19854.21, state_capital: 'Mainz'}), 
(niedersachsen:State {name: 'Niedersachsen', population: 8140242, area: 47709.82, state_capital: 'Hannover'}),

// Entities: Geometries
(nrw_geom:Geometry {url: 'https://github.com/aurioldegbelo/sis2025/blob/main/vector_data/nrw.geojson'}), 
(hessen_geom:Geometry {url: 'https://github.com/aurioldegbelo/sis2025/blob/main/vector_data/hessen.geojson'}), 
(rlp_geom:Geometry {url: 'https://github.com/aurioldegbelo/sis2025/blob/main/vector_data/rheinland-pfalz.geojson'}), 
(niedersachsen_geom:Geometry {url: 'https://github.com/aurioldegbelo/sis2025/blob/main/vector_data/niedersachsen.geojson'}), 

// Relationships State-Geometry
(nrw) -[:HAS_GEOMETRY]-> (nrw_geom),
(hessen) -[:HAS_GEOMETRY]-> (hessen_geom),
(rlp) -[:HAS_GEOMETRY]-> (rlp_geom),
(niedersachsen) -[:HAS_GEOMETRY]-> (niedersachsen_geom),

// Relationships Geometry-Geometry
(nrw_geom) -[:TOUCHES]-> (hessen_geom),
(nrw_geom) -[:TOUCHES]-> (rlp_geom),
(nrw_geom) -[:TOUCHES]-> (niedersachsen_geom),

(hessen_geom) -[:TOUCHES]-> (nrw_geom),
(rlp_geom) -[:TOUCHES]-> (nrw_geom),
(niedersachsen_geom) -[:TOUCHES]-> (nrw_geom),

(hessen_geom) -[:TOUCHES]-> (rlp_geom),
(rlp_geom) -[:TOUCHES]-> (hessen_geom),

(niedersachsen_geom) -[:TOUCHES]-> (hessen_geom),
(hessen_geom) -[:TOUCHES]-> (niedersachsen_geom)
