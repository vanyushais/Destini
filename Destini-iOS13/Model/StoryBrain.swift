
import Foundation

struct StoryBrain {
    
    var storyNumber = 0
    
    let stories = [
        Story(
            title: "У вашего автомобиля лопнула шина на извилистой дороге в глуши, где нет сотовой связи. Вы решаете поехать автостопом. Ржавый пикап с грохотом останавливается рядом с вами. Человек в широкополой шляпе с бездушными глазами открывает перед вами пассажирскую дверь и спрашивает: «Подвезти, мальчик?».",
            choice1: "Я прыгну. Спасибо за помощь!", choice1Destination: 2,
            choice2: "Лучше сначала спросите его, убийца ли он.", choice2Destination: 1
        ),
        Story(
            title: "Он медленно кивает, не обращая внимания на вопрос.",
            choice1: "По крайней мере, он честный. Я залезу.", choice1Destination: 2,
            choice2: "Подождите, я знаю, как поменять шину.", choice2Destination: 3
        ),
        Story(
            title: "Когда вы садитесь за руль, незнакомец начинает рассказывать о своих отношениях с матерью. Он становится все злее и злее с каждой минутой. Он просит вас открыть бардачок. Внутри вы найдете окровавленный нож, два отрубленных пальца и кассету с записью Элтона Джона. Он тянется к бардачку.",
            choice1: "Я люблю Элтона Джона! Дайте ему кассету.", choice1Destination: 5,
            choice2: "Либо он, либо я! Вы берете нож и наносите ему удары.", choice2Destination: 4
        ),
        Story(
            title: "Какие? Такой полицейский! Знаете ли вы, что дорожно-транспортные происшествия являются второй по значимости причиной смерти от несчастных случаев для большинства взрослых возрастных групп?",
            choice1: "Это", choice1Destination: 0,
            choice2: "Конец", choice2Destination: 0
        ),
        Story(
            title: "Когда вы разбиваете ограждение и кренитесь к зазубренным камням внизу, вы размышляете о сомнительной мудрости нанесения удара ножом кому-то, когда он ведет машину, в которой вы находитесь.",
            choice1: "Это", choice1Destination: 0,
            choice2: "Конец", choice2Destination: 0
        ),
        Story(
            title: "Вы связываетесь с убийцей, напевая стихи «Чувствуете ли вы любовь сегодня вечером?». Он высадит вас в следующем городе. Прежде чем вы уйдете, он спрашивает вас, знаете ли вы какие-нибудь хорошие места, где можно сбросить тела. Вы отвечаете: «Попробуйте на пирсе».",
            choice1: "Это", choice1Destination: 0,
            choice2: "Конец", choice2Destination: 0
        )
    ]
    
    func getStoryTitle() -> String {
        return stories[storyNumber].title
    }
    
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
    
    mutating func nextStory(userChoice: String) {
        
        let currentStory = stories[storyNumber]
        if userChoice == currentStory.choice1 {
            storyNumber = currentStory.choice1Destination
        } else if userChoice == currentStory.choice2 {
            storyNumber = currentStory.choice2Destination
        }
    }
    
}


