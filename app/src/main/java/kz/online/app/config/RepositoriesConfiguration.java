package kz.online.app.config;

import kz.online.repositories.*;
import kz.online.repositories.dictionary.*;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class RepositoriesConfiguration {

    @Bean
    RepositoriesBeen repositoriesBeen(PageComponentRepository pageComponentRepository, ServiceRepository serviceRepository,
                                      SubServiceRepository subServiceRepository, UserLegalTypeRepository userLegalTypeRepository,
                                      UserTypeRepository userTypeRepository, CommentRepository commentRepository, TopicRepository topicRepository,
                                      UserGeneralInformationRepository userGeneralInformationRepository, UserRepository userRepository) {
        return new RepositoriesBeen(pageComponentRepository, serviceRepository, subServiceRepository, userLegalTypeRepository,
                userTypeRepository, commentRepository, topicRepository, userGeneralInformationRepository, userRepository);
    }
}