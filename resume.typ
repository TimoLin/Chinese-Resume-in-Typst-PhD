#import "template.typ": *
#import "projects.typ": *

// 设置图标, 来源: https://fontawesome.com/icons/
// 如果要修改图标颜色, 请手动修改 svg 文件中的 fill="rgb(38, 38, 125)" 属性
// 例如可以使用 VS Code 的全局文本替换功能
#let faAward = icon("icons/fa-award.svg")
#let faBuildingColumns = icon("icons/fa-building-columns.svg")
#let faCode = icon("icons/fa-code.svg")
#let faEnvelope = icon("icons/fa-envelope.svg")
#let faGithub = icon("icons/fa-github.svg")
#let faGraduationCap = icon("icons/fa-graduation-cap.svg")
#let faLinux = icon("icons/fa-linux.svg")
#let faPhone = icon("icons/fa-phone.svg")
#let faWindows = icon("icons/fa-windows.svg")
#let faWrench = icon("icons/fa-wrench.svg")
#let faWork = icon("icons/fa-work.svg")
#let faBook = icon("icons/fa-book.svg")

// 主题颜色
#let themeColor = rgb(38, 38, 125)

// 设置简历选项与头部
#show: resume.with(
  // 字体基准大小
  size: 10pt,
  // 标题颜色
  themeColor: themeColor,
  // 控制纸张的边距
  top: 1.0cm,
  bottom: 1.0cm,
  left: 1.5cm,
  right: 1.5cm,

  // 如果需要姓名及联系信息居中，请删除下面关于头像的三行参数，并取消headerCenter的注释
  //headerCenter : true,
  
  // 如果不需要头像，则将下面三行的参数注释或删除
  photograph: "profile.png",
  photographWidth: 8em,
  gutterWidth: 2em,
)[

// 姓名加大字号
#set text(size: 15pt)
= 空条Q太郎（Qtaro Kujo）

#info(
  color: themeColor,
  contact-options: (
    gender: "男",
    birthday: "1970-04",
    politics: "群众",
    birthplace: "日本东京",
    mobile: "156XXXX1234",
    email: link("mailto:j.kujo@example.mail")[j.kujo\@example.mail],
    // github 与 orcid 可以取消注释并修改链接
    //github: link("https://github.com/TimoLin")[github.com/TimoLin],
    //orcid: link("https://orcid.org/0000-0002-xxxx-xxxx")[0000-0002-xxxx-xxxx],
  )  
)
][
  // 不需要的话可以删除
  求职意向：替身能力研发工程师
]


== #faGraduationCap 教育背景

#sidebar(withLine: true, sideWidth: 18%)[
  #set text(size: 11pt)
  1996.09 - 2001.07
  
  研究方向
][
  #set text(size: 11pt)
  // 对齐
  *东京大学*#h(1fr)生物学#h(1fr)博士
 
  // 研究方向
  海洋生物学、动物行为学、复杂生态系统的研究
]
#sidebar(withLine: true, sideWidth: 18%)[
  #set text(size: 11pt)
  1993.09 - 1996.07
  
  研究方向
][
  #set text(size: 11pt)
  // 对齐
  *东京大学*#h(1fr)生物学#h(1fr)硕士
 
  // 研究方向
  海洋生态系统与物种间的协同进化
]

#sidebar(withLine: true, sideWidth: 18%)[
  #set text(size: 11pt)
  1989.09 - 1993.07
  
  专业课程
][
  #set text(size: 11pt)
  // 对齐
  *东京大学*#h(1fr)生物学#h(1fr)学士
 
  // 专业课程
  海洋生物学、生态学、遗传学、生物化学
]

== #faWork 项目经历

// 突出展示的项目经历
#let mainProjs = (
  "deep_sea",
  "fight_dio",
  "study_dio",
  "ocean_species",
  "deep_sea_adaptation",
  "ocean",
)

// 不重要的项目
#let otherProjs = (
  "study_stand",
  "ocean_behavior",
  "biology_stand"
)

// 列出想要突出展示的项目经历
// showDetails默认为ture，即展示项目详情
#for p in mainProjs {
  let data = projs.at(p)
  itemProj(
    color: themeColor,
    data.name,
    data.source,
    data.role,
    data.time,
    data.details
  )
}


#item(
  [*参与的其他项目*],
  [],
  date[]
)

// 仅列出其他不重要的项目名称/来源/时间
// showDetails设置为false，即不展示项目详情
#for p in otherProjs {
  let data = projs.at(p)
  itemProj(
    color: themeColor,
    data.name,
    data.source,
    data.role,
    data.time,
    data.details,
    showDetails: false
  )
}

== #faWrench 专业技能

#sidebar(withLine: false, sideWidth: 15%)[
  *编程语言*
][
  熟练掌握 *Python*、*C++*、*Matlab*、*R*，有 *Linux* 和 *Windows* 平台开发经验
]

#sidebar(withLine: false, sideWidth: 15%)[
  *实验技能*
][
  熟练掌握海洋生物学实验技术，包括海洋生物标本采集、处理、保存、饲养、观察、实验等
]

#sidebar(withLine: false, sideWidth: 15%)[
  *语言水平*
][
  英语CET-6（590），能够流利阅读和书写科技文献
]



 == #faBuildingColumns 其他经历

// 在这里添加你的经历
#item(
  [ *遗传学与海洋生物学课程助教* ],
  [课程助教],
  date[1996秋季学期]
)

#item(
  [ *国际海洋生态系统保护培训短期课程* ],
  [],
  date[1998.05]

)

== #faAward 获奖情况
#item(
  [- *国家奖学金*],
  [],
  date[1998.06]
)

#item(
  [- *国际会议优秀论文*],
  [一等奖],
  date[1999.08]
)

== #faBook 发表论文

+ *Kujo Jotaro*, Higashikata Josuke, Zeppeli Jonathan, "Neuroadaptive Responses of Marine Organisms to Extreme Pressure Environments," *Journal of Marine Biology*, vol. 45, no. 2, pp. 150-165, 1998.  

+ *Kujo Jotaro*, Brando Dio, Speedwagon Robert, "The Role of Neural Plasticity in Oceanic Species Under Climate Change Conditions," *Nature Communications*, vol. 12, no. 432, pp. 1-10, 2000.  

+ *Kujo Jotaro*, Caesar Anthonio, Kakyoin Noriaki, "Biochemical and Neural Mechanisms of Stand Power in Marine Organisms," *Marine Neurobiology Review*, vol. 22, no. 4, pp. 301-320, 2001.  

+ Zeppeli Will, *Kujo Jotaro*, Polnareff Jean Pierre, "Marine Species Adaptation Mechanisms in Response to Abrupt Temperature Changes," *Ecological Research Letters*, vol. 18, no. 5, pp. 123-140, 1997.  

+ Higashikata Josuke, *Kujo Jotaro*, Brando Dio, "Behavioral Adaptations and Neural Responses in Deep-sea Fish under Polluted Habitats," *Journal of Experimental Biology*, vol. 68, no. 3, pp. 230-245, 1999.  

+ *Kujo Jotaro*, Higashikata Josuke, "Impact of Environmental Stress on Neural Adaptation in Marine Species," *Marine Biology Progress Series*, vol. 15, no. 3, pp. 245-260, 1995.  

+ *Kujo Jotaro*, Brando Dio, "Neural Mechanisms of Behavior in Response to Oceanic Temperature Variability," *Journal of Marine Science*, vol. 30, no. 1, pp. 77-88, 1996.  

+ Higashikata Josuke, *Kujo Jotaro*, Speedwagon Robert, "The Role of Neurotransmitters in Marine Organisms' Response to Environmental Changes," *Journal of Experimental Marine Biology and Ecology*, vol. 45, no. 2, pp. 123-135, 1997.  

+ *Kujo Jotaro*, Kakyoin Noriaki, "Physiological Responses of Marine Animals to Pollutants: A Neurobiological Perspective," *Ecotoxicology Journal*, vol. 10, no. 4, pp. 301-312, 2000.  
