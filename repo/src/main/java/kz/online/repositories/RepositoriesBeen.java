package kz.online.repositories;

import kz.online.repositories.dictionary.*;


public class RepositoriesBeen {

    private PageComponentRepository pageComponentRepository;
    private ServiceRepository serviceRepository;
    private SubServiceRepository subServiceRepository;
    private UserLegalTypeRepository userLegalTypeRepository;
    private UserTypeRepository userTypeRepository;
    private CommentRepository commentRepository;
    private TopicRepository topicRepository;
    private UserGeneralInformationRepository userGeneralInformationRepository;
    private UserRepository userRepository;

    public RepositoriesBeen(PageComponentRepository pageComponentRepository, ServiceRepository serviceRepository,
                            SubServiceRepository subServiceRepository, UserLegalTypeRepository userLegalTypeRepository,
                            UserTypeRepository userTypeRepository, CommentRepository commentRepository, TopicRepository topicRepository,
                            UserGeneralInformationRepository userGeneralInformationRepository, UserRepository userRepository) {
        this.pageComponentRepository = pageComponentRepository;
        this.serviceRepository = serviceRepository;
        this.subServiceRepository = subServiceRepository;
        this.userLegalTypeRepository = userLegalTypeRepository;
        this.userTypeRepository = userTypeRepository;
        this.commentRepository = commentRepository;
        this.topicRepository = topicRepository;
        this.userGeneralInformationRepository = userGeneralInformationRepository;
        this.userRepository = userRepository;
    }
}
