package io.holixon.axon.example.plugin;

import java.util.HashSet;
import java.util.Set;
import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceRegistration;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Activator implements BundleActivator {

  private final Logger logger = LoggerFactory.getLogger(Activator.class);
  private final Set<ServiceRegistration<?>> registration = new HashSet<>();

  @Override
  public void start(BundleContext bundleContext) {
    logger.error("-------------------    STARTING PLUGIN");
    throw new IllegalStateException("There is something wrong!");
  }

  @Override
  public void stop(BundleContext bundleContext) {
    logger.error("-------------------    STOPPING PLUGIN");
    registration.forEach(ServiceRegistration::unregister);
  }
}
