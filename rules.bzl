def plantuml(name, srcs, format="png", visibility=None):
  native.genrule(
  name = name,
  srcs = srcs,
  cmd = "java -jar $(location @plantuml_jar//jar) -t%s -o $@ $(SRCS)" %format,
  outs = [name + ".out"],
  executable = True,
  tools = ["@plantuml_jar//jar"]
)

