<?php

// This file has been auto-generated by the Symfony Dependency Injection Component for internal use.

if (\class_exists(\ContainerXtO80ur\srcDevDebugProjectContainer::class, false)) {
    // no-op
} elseif (!include __DIR__.'/ContainerXtO80ur/srcDevDebugProjectContainer.php') {
    touch(__DIR__.'/ContainerXtO80ur.legacy');

    return;
}

if (!\class_exists(srcDevDebugProjectContainer::class, false)) {
    \class_alias(\ContainerXtO80ur\srcDevDebugProjectContainer::class, srcDevDebugProjectContainer::class, false);
}

return new \ContainerXtO80ur\srcDevDebugProjectContainer(array(
    'container.build_hash' => 'XtO80ur',
    'container.build_id' => 'a4c50020',
    'container.build_time' => 1542643596,
), __DIR__.\DIRECTORY_SEPARATOR.'ContainerXtO80ur');
