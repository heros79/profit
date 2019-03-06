package app.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import repositories.*;
import repositories.dictionary.*;

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