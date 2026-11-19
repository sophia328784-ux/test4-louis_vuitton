.class public final Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/capabilities/CapabilitiesRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0010 \n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001c\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u000cH\u0016J\u001a\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0008\u0010\u001a\u001a\u00020\u0016H\u0016J\u0008\u0010\u001b\u001a\u00020\u0016H\u0016J\u0008\u0010\u001c\u001a\u00020\u0016H\u0016J\u0008\u0010\u001d\u001a\u00020\u0016H\u0016J\u0008\u0010\u001e\u001a\u00020\u0016H\u0016J\u0008\u0010\u001f\u001a\u00020\u0016H\u0016J\u0008\u0010 \u001a\u00020\u0016H\u0016J\u0008\u0010!\u001a\u00020\u0016H\u0016J\u0008\u0010\"\u001a\u00020\u0016H\u0016J\u0008\u0010#\u001a\u00020\u0016H\u0016J\u0008\u0010$\u001a\u00020\u0016H\u0016J\u0008\u0010%\u001a\u00020\u0016H\u0016J\u0008\u0010&\u001a\u00020\u0016H\u0016J\u0008\u0010\'\u001a\u00020\u0016H\u0016J\u0008\u0010(\u001a\u00020\u0016H\u0016J\u0008\u0010)\u001a\u00020\u0016H\u0016J\u0008\u0010*\u001a\u00020\u0016H\u0016J\u0010\u0010+\u001a\u00020\u00162\u0006\u0010,\u001a\u00020\u0003H\u0016J(\u0010-\u001a\u00020\u00162\u000e\u0008\u0002\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\n0/2\u000e\u0008\u0002\u00100\u001a\u0008\u0012\u0004\u0012\u00020\n0/H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R+\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000c8B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0014\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00061"
    }
    d2 = {
        "Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;",
        "Lcom/sightcall/capabilities/CapabilitiesRepository;",
        "isInstantApp",
        "",
        "rtccDatasource",
        "Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasource;",
        "<init>",
        "(ZLcom/sightcall/capabilities/datasource/rtcc/RtccDatasource;)V",
        "capabilitiesSet",
        "",
        "Lcom/sightcall/capabilities/Capability;",
        "<set-?>",
        "",
        "requestId",
        "getRequestId",
        "()Ljava/lang/String;",
        "setRequestId",
        "(Ljava/lang/String;)V",
        "requestId$delegate",
        "Lkotlin/properties/ReadWriteProperty;",
        "update",
        "register",
        "",
        "uidLocal",
        "request",
        "Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesRequestEntity;",
        "cancel",
        "activateScreenShare",
        "stopScreenShare",
        "activateVideo",
        "stopVideo",
        "pauseVideo",
        "resumeVideo",
        "activateAr",
        "stopAr",
        "activateScreencast",
        "stopScreencast",
        "activateCoBrowsing",
        "stopCoBrowsing",
        "activateCollimator",
        "stopCollimator",
        "frontCamera",
        "backCamera",
        "setAdvancedAnnotation",
        "enabled",
        "updateCapabilities",
        "add",
        "",
        "remove",
        "capabilities_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final capabilitiesSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sightcall/capabilities/Capability;",
            ">;"
        }
    .end annotation
.end field

.field private final isInstantApp:Z

.field private final requestId$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final rtccDatasource:Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasource;

.field private update:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v1, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;

    const-string v2, "requestId"

    const-string v3, "getRequestId()Ljava/lang/String;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v0, v1, v4

    sput-object v1, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(ZLcom/sightcall/capabilities/datasource/rtcc/RtccDatasource;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->isInstantApp:Z

    iput-object p2, p0, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->rtccDatasource:Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasource;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->capabilitiesSet:Ljava/util/Set;

    sget-object p1, Lkotlin/properties/Delegates;->a:Lkotlin/properties/Delegates;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lkotlin/properties/Delegates;->a()Lkotlin/properties/ReadWriteProperty;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->requestId$delegate:Lkotlin/properties/ReadWriteProperty;

    return-void
.end method

.method private final getRequestId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->requestId$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadOnlyProperty;->b(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private final register(Ljava/lang/String;Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesRequestEntity;)V
    .locals 6

    invoke-virtual {p2}, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesRequestEntity;->getUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesRequestEntity;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_3

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->capabilitiesSet:Ljava/util/Set;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sightcall/capabilities/Capability;

    sget-object v1, Lcom/sightcall/capabilities/Capability$CoBrowsing;->INSTANCE:Lcom/sightcall/capabilities/Capability$CoBrowsing;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$GuestSwitch;->INSTANCE:Lcom/sightcall/capabilities/Capability$GuestSwitch;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$TouchScreen;->INSTANCE:Lcom/sightcall/capabilities/Capability$TouchScreen;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$PictureEdition;->INSTANCE:Lcom/sightcall/capabilities/Capability$PictureEdition;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$TranslationRemote;->INSTANCE:Lcom/sightcall/capabilities/Capability$TranslationRemote;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$CaseReportV3;->INSTANCE:Lcom/sightcall/capabilities/Capability$CaseReportV3;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$ScreenCast;->INSTANCE:Lcom/sightcall/capabilities/Capability$ScreenCast;

    const/4 v3, 0x6

    aput-object v1, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/sightcall/capabilities/Capability;

    iget-boolean v5, p0, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->isInstantApp:Z

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/sightcall/capabilities/Capability;->isAvailableOnInstantApp()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {p1, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->rtccDatasource:Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasource;

    invoke-virtual {p2}, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesRequestEntity;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->capabilitiesSet:Ljava/util/Set;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sightcall/capabilities/Capability;

    invoke-static {v4}, Lcom/sightcall/capabilities/CapabilitiesMappersKt;->toRtccCapability(Lcom/sightcall/capabilities/Capability;)Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-interface {p1, v0, v3}, Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasource;->response(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p2}, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesRequestEntity;->getUpdate()Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iput-boolean v2, p0, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->update:Z

    invoke-virtual {p2}, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesRequestEntity;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->setRequestId(Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void
.end method

.method private final setRequestId(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->requestId$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v0, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p0, p1, v0}, Lkotlin/properties/ReadWriteProperty;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;)V

    return-void
.end method

.method private final declared-synchronized updateCapabilities(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/sightcall/capabilities/Capability;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/sightcall/capabilities/Capability;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/sightcall/capabilities/Capability;

    iget-boolean v3, p0, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->isInstantApp:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/sightcall/capabilities/Capability;->isAvailableOnInstantApp()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->update:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->rtccDatasource:Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasource;

    invoke-direct {p0}, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->getRequestId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sightcall/capabilities/Capability;

    invoke-static {v5}, Lcom/sightcall/capabilities/CapabilitiesMappersKt;->toRtccCapability(Lcom/sightcall/capabilities/Capability;)Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v4, p2

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sightcall/capabilities/Capability;

    invoke-static {v4}, Lcom/sightcall/capabilities/CapabilitiesMappersKt;->toRtccCapability(Lcom/sightcall/capabilities/Capability;)Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-interface {p1, v1, v2, v5}, Lcom/sightcall/capabilities/datasource/rtcc/RtccDatasource;->update(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    :cond_4
    iget-object p1, p0, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->capabilitiesSet:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->capabilitiesSet:Ljava/util/Set;

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p1, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static updateCapabilities$default(Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    sget-object p1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    sget-object p2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->updateCapabilities(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public activateAr()V
    .locals 4

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/sightcall/capabilities/Capability;

    sget-object v1, Lcom/sightcall/capabilities/Capability$Snapshot;->INSTANCE:Lcom/sightcall/capabilities/Capability$Snapshot;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$Zoom;->INSTANCE:Lcom/sightcall/capabilities/Capability$Zoom;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$Flashlight;->INSTANCE:Lcom/sightcall/capabilities/Capability$Flashlight;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$ShareFromGallery;->INSTANCE:Lcom/sightcall/capabilities/Capability$ShareFromGallery;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$Ocr;->INSTANCE:Lcom/sightcall/capabilities/Capability$Ocr;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$CoBrowsing;->INSTANCE:Lcom/sightcall/capabilities/Capability$CoBrowsing;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$ScreenCast;->INSTANCE:Lcom/sightcall/capabilities/Capability$ScreenCast;

    const/4 v3, 0x6

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$Note;->INSTANCE:Lcom/sightcall/capabilities/Capability$Note;

    const/4 v3, 0x7

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$ChangeCamera;->INSTANCE:Lcom/sightcall/capabilities/Capability$ChangeCamera;

    const/16 v3, 0x8

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$CameraPause;->INSTANCE:Lcom/sightcall/capabilities/Capability$CameraPause;

    const/16 v3, 0x9

    aput-object v1, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v2, v1}, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->updateCapabilities$default(Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public activateCoBrowsing()V
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sightcall/capabilities/Capability;

    sget-object v1, Lcom/sightcall/capabilities/Capability$Snapshot;->INSTANCE:Lcom/sightcall/capabilities/Capability$Snapshot;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$Zoom;->INSTANCE:Lcom/sightcall/capabilities/Capability$Zoom;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$Flashlight;->INSTANCE:Lcom/sightcall/capabilities/Capability$Flashlight;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$ShareFromGallery;->INSTANCE:Lcom/sightcall/capabilities/Capability$ShareFromGallery;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$Ocr;->INSTANCE:Lcom/sightcall/capabilities/Capability$Ocr;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$ChangeCamera;->INSTANCE:Lcom/sightcall/capabilities/Capability$ChangeCamera;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$CameraPause;->INSTANCE:Lcom/sightcall/capabilities/Capability$CameraPause;

    const/4 v3, 0x6

    aput-object v1, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v2, v1}, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->updateCapabilities$default(Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public activateCollimator()V
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sightcall/capabilities/Capability;

    sget-object v1, Lcom/sightcall/capabilities/Capability$ShareFromGallery;->INSTANCE:Lcom/sightcall/capabilities/Capability$ShareFromGallery;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$CoBrowsing;->INSTANCE:Lcom/sightcall/capabilities/Capability$CoBrowsing;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$ScreenCast;->INSTANCE:Lcom/sightcall/capabilities/Capability$ScreenCast;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$Note;->INSTANCE:Lcom/sightcall/capabilities/Capability$Note;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$ChangeCamera;->INSTANCE:Lcom/sightcall/capabilities/Capability$ChangeCamera;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$CameraPause;->INSTANCE:Lcom/sightcall/capabilities/Capability$CameraPause;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$Snapshot;->INSTANCE:Lcom/sightcall/capabilities/Capability$Snapshot;

    const/4 v3, 0x6

    aput-object v1, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v2, v1}, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->updateCapabilities$default(Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public activateScreenShare()V
    .locals 4

    sget-object v0, Lcom/sightcall/capabilities/Capability$Note;->INSTANCE:Lcom/sightcall/capabilities/Capability$Note;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/sightcall/capabilities/Capability;

    sget-object v2, Lcom/sightcall/capabilities/Capability$Snapshot;->INSTANCE:Lcom/sightcall/capabilities/Capability$Snapshot;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sightcall/capabilities/Capability$Zoom;->INSTANCE:Lcom/sightcall/capabilities/Capability$Zoom;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/sightcall/capabilities/Capability$Flashlight;->INSTANCE:Lcom/sightcall/capabilities/Capability$Flashlight;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/sightcall/capabilities/Capability$Ocr;->INSTANCE:Lcom/sightcall/capabilities/Capability$Ocr;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/sightcall/capabilities/Capability$CoBrowsing;->INSTANCE:Lcom/sightcall/capabilities/Capability$CoBrowsing;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/sightcall/capabilities/Capability$ChangeCamera;->INSTANCE:Lcom/sightcall/capabilities/Capability$ChangeCamera;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/sightcall/capabilities/Capability$CameraPause;->INSTANCE:Lcom/sightcall/capabilities/Capability$CameraPause;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->updateCapabilities(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public activateScreencast()V
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/sightcall/capabilities/Capability;

    sget-object v1, Lcom/sightcall/capabilities/Capability$Snapshot;->INSTANCE:Lcom/sightcall/capabilities/Capability$Snapshot;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$Zoom;->INSTANCE:Lcom/sightcall/capabilities/Capability$Zoom;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$Flashlight;->INSTANCE:Lcom/sightcall/capabilities/Capability$Flashlight;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$ShareFromGallery;->INSTANCE:Lcom/sightcall/capabilities/Capability$ShareFromGallery;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$Ocr;->INSTANCE:Lcom/sightcall/capabilities/Capability$Ocr;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$CoBrowsing;->INSTANCE:Lcom/sightcall/capabilities/Capability$CoBrowsing;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$Note;->INSTANCE:Lcom/sightcall/capabilities/Capability$Note;

    const/4 v3, 0x6

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$ChangeCamera;->INSTANCE:Lcom/sightcall/capabilities/Capability$ChangeCamera;

    const/4 v3, 0x7

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$CameraPause;->INSTANCE:Lcom/sightcall/capabilities/Capability$CameraPause;

    const/16 v3, 0x8

    aput-object v1, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v2, v1}, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->updateCapabilities$default(Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public activateVideo()V
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/sightcall/capabilities/Capability;

    sget-object v1, Lcom/sightcall/capabilities/Capability$Snapshot;->INSTANCE:Lcom/sightcall/capabilities/Capability$Snapshot;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$Zoom;->INSTANCE:Lcom/sightcall/capabilities/Capability$Zoom;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$Flashlight;->INSTANCE:Lcom/sightcall/capabilities/Capability$Flashlight;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$ShareFromGallery;->INSTANCE:Lcom/sightcall/capabilities/Capability$ShareFromGallery;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$Ocr;->INSTANCE:Lcom/sightcall/capabilities/Capability$Ocr;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$CoBrowsing;->INSTANCE:Lcom/sightcall/capabilities/Capability$CoBrowsing;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$ChangeCamera;->INSTANCE:Lcom/sightcall/capabilities/Capability$ChangeCamera;

    const/4 v3, 0x6

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$ScreenCast;->INSTANCE:Lcom/sightcall/capabilities/Capability$ScreenCast;

    const/4 v3, 0x7

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$CameraPause;->INSTANCE:Lcom/sightcall/capabilities/Capability$CameraPause;

    const/16 v3, 0x8

    aput-object v1, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v2, v1}, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->updateCapabilities$default(Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public backCamera()V
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/sightcall/capabilities/Capability;

    sget-object v1, Lcom/sightcall/capabilities/Capability$Snapshot;->INSTANCE:Lcom/sightcall/capabilities/Capability$Snapshot;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$Zoom;->INSTANCE:Lcom/sightcall/capabilities/Capability$Zoom;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$ShareFromGallery;->INSTANCE:Lcom/sightcall/capabilities/Capability$ShareFromGallery;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$Ocr;->INSTANCE:Lcom/sightcall/capabilities/Capability$Ocr;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$CoBrowsing;->INSTANCE:Lcom/sightcall/capabilities/Capability$CoBrowsing;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$ScreenCast;->INSTANCE:Lcom/sightcall/capabilities/Capability$ScreenCast;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$ChangeCamera;->INSTANCE:Lcom/sightcall/capabilities/Capability$ChangeCamera;

    const/4 v3, 0x6

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$CameraPause;->INSTANCE:Lcom/sightcall/capabilities/Capability$CameraPause;

    const/4 v3, 0x7

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$Flashlight;->INSTANCE:Lcom/sightcall/capabilities/Capability$Flashlight;

    const/16 v3, 0x8

    aput-object v1, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v2, v1}, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->updateCapabilities$default(Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->update:Z

    return-void
.end method

.method public frontCamera()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/sightcall/capabilities/Capability;

    sget-object v1, Lcom/sightcall/capabilities/Capability$Snapshot;->INSTANCE:Lcom/sightcall/capabilities/Capability$Snapshot;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$Zoom;->INSTANCE:Lcom/sightcall/capabilities/Capability$Zoom;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$ShareFromGallery;->INSTANCE:Lcom/sightcall/capabilities/Capability$ShareFromGallery;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$Ocr;->INSTANCE:Lcom/sightcall/capabilities/Capability$Ocr;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$CoBrowsing;->INSTANCE:Lcom/sightcall/capabilities/Capability$CoBrowsing;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$ScreenCast;->INSTANCE:Lcom/sightcall/capabilities/Capability$ScreenCast;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$ChangeCamera;->INSTANCE:Lcom/sightcall/capabilities/Capability$ChangeCamera;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$CameraPause;->INSTANCE:Lcom/sightcall/capabilities/Capability$CameraPause;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/sightcall/capabilities/Capability$Flashlight;->INSTANCE:Lcom/sightcall/capabilities/Capability$Flashlight;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->updateCapabilities(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public pauseVideo()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sightcall/capabilities/Capability;

    sget-object v1, Lcom/sightcall/capabilities/Capability$Snapshot;->INSTANCE:Lcom/sightcall/capabilities/Capability$Snapshot;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$Zoom;->INSTANCE:Lcom/sightcall/capabilities/Capability$Zoom;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$Flashlight;->INSTANCE:Lcom/sightcall/capabilities/Capability$Flashlight;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$Ocr;->INSTANCE:Lcom/sightcall/capabilities/Capability$Ocr;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$ChangeCamera;->INSTANCE:Lcom/sightcall/capabilities/Capability$ChangeCamera;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v2, v1}, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->updateCapabilities$default(Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 181
    const-string v0, "Unable to deserialize: "

    if-eqz p2, :cond_0

    .line 182
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesRequestEntity;

    invoke-virtual {v1, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sightcall/pratik/extensions/JsonException; {:try_start_0 .. :try_end_0} :catch_1

    .line 183
    :try_start_1
    check-cast p2, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesRequestEntity;

    .line 184
    invoke-direct {p0, p1, p2}, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->register(Ljava/lang/String;Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesRequestEntity;)V
    :try_end_1
    .catch Lcom/sightcall/pratik/extensions/JsonException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    .line 185
    :cond_0
    :try_start_2
    const-string p0, "Required value was null."

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/sightcall/pratik/extensions/JsonException; {:try_start_2 .. :try_end_2} :catch_1

    .line 186
    :goto_0
    :try_start_3
    new-instance p1, Lcom/sightcall/pratik/extensions/JsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/sightcall/pratik/extensions/JsonException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_3
    .catch Lcom/sightcall/pratik/extensions/JsonException; {:try_start_3 .. :try_end_3} :catch_1

    .line 187
    :catch_1
    sget-object p0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    .line 188
    invoke-virtual {p0}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    return-void
.end method

.method public resumeVideo()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sightcall/capabilities/Capability;

    sget-object v1, Lcom/sightcall/capabilities/Capability$Snapshot;->INSTANCE:Lcom/sightcall/capabilities/Capability$Snapshot;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$Zoom;->INSTANCE:Lcom/sightcall/capabilities/Capability$Zoom;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$Flashlight;->INSTANCE:Lcom/sightcall/capabilities/Capability$Flashlight;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$Ocr;->INSTANCE:Lcom/sightcall/capabilities/Capability$Ocr;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$ChangeCamera;->INSTANCE:Lcom/sightcall/capabilities/Capability$ChangeCamera;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v2, v1}, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->updateCapabilities$default(Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public setAdvancedAnnotation(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/sightcall/capabilities/Capability$AdvancedAnnotations;->INSTANCE:Lcom/sightcall/capabilities/Capability$AdvancedAnnotations;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->updateCapabilities$default(Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)V

    return-void

    :cond_0
    sget-object p1, Lcom/sightcall/capabilities/Capability$AdvancedAnnotations;->INSTANCE:Lcom/sightcall/capabilities/Capability$AdvancedAnnotations;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1, v0}, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->updateCapabilities$default(Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public stopAr()V
    .locals 4

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/sightcall/capabilities/Capability;

    sget-object v1, Lcom/sightcall/capabilities/Capability$Snapshot;->INSTANCE:Lcom/sightcall/capabilities/Capability$Snapshot;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$Zoom;->INSTANCE:Lcom/sightcall/capabilities/Capability$Zoom;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$Flashlight;->INSTANCE:Lcom/sightcall/capabilities/Capability$Flashlight;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$ShareFromGallery;->INSTANCE:Lcom/sightcall/capabilities/Capability$ShareFromGallery;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$Ocr;->INSTANCE:Lcom/sightcall/capabilities/Capability$Ocr;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$CoBrowsing;->INSTANCE:Lcom/sightcall/capabilities/Capability$CoBrowsing;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$ScreenCast;->INSTANCE:Lcom/sightcall/capabilities/Capability$ScreenCast;

    const/4 v3, 0x6

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$Note;->INSTANCE:Lcom/sightcall/capabilities/Capability$Note;

    const/4 v3, 0x7

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$ChangeCamera;->INSTANCE:Lcom/sightcall/capabilities/Capability$ChangeCamera;

    const/16 v3, 0x8

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$CameraPause;->INSTANCE:Lcom/sightcall/capabilities/Capability$CameraPause;

    const/16 v3, 0x9

    aput-object v1, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v2, v1}, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->updateCapabilities$default(Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public stopCoBrowsing()V
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sightcall/capabilities/Capability;

    sget-object v1, Lcom/sightcall/capabilities/Capability$Snapshot;->INSTANCE:Lcom/sightcall/capabilities/Capability$Snapshot;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$Zoom;->INSTANCE:Lcom/sightcall/capabilities/Capability$Zoom;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$Flashlight;->INSTANCE:Lcom/sightcall/capabilities/Capability$Flashlight;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$ShareFromGallery;->INSTANCE:Lcom/sightcall/capabilities/Capability$ShareFromGallery;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$Ocr;->INSTANCE:Lcom/sightcall/capabilities/Capability$Ocr;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$ChangeCamera;->INSTANCE:Lcom/sightcall/capabilities/Capability$ChangeCamera;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$CameraPause;->INSTANCE:Lcom/sightcall/capabilities/Capability$CameraPause;

    const/4 v3, 0x6

    aput-object v1, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v2, v1}, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->updateCapabilities$default(Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public stopCollimator()V
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sightcall/capabilities/Capability;

    sget-object v1, Lcom/sightcall/capabilities/Capability$ShareFromGallery;->INSTANCE:Lcom/sightcall/capabilities/Capability$ShareFromGallery;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$CoBrowsing;->INSTANCE:Lcom/sightcall/capabilities/Capability$CoBrowsing;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$ScreenCast;->INSTANCE:Lcom/sightcall/capabilities/Capability$ScreenCast;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$Note;->INSTANCE:Lcom/sightcall/capabilities/Capability$Note;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$ChangeCamera;->INSTANCE:Lcom/sightcall/capabilities/Capability$ChangeCamera;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$CameraPause;->INSTANCE:Lcom/sightcall/capabilities/Capability$CameraPause;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$Snapshot;->INSTANCE:Lcom/sightcall/capabilities/Capability$Snapshot;

    const/4 v3, 0x6

    aput-object v1, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v2, v1}, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->updateCapabilities$default(Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public stopScreenShare()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sightcall/capabilities/Capability;

    sget-object v1, Lcom/sightcall/capabilities/Capability$Snapshot;->INSTANCE:Lcom/sightcall/capabilities/Capability$Snapshot;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$Zoom;->INSTANCE:Lcom/sightcall/capabilities/Capability$Zoom;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$Flashlight;->INSTANCE:Lcom/sightcall/capabilities/Capability$Flashlight;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$Ocr;->INSTANCE:Lcom/sightcall/capabilities/Capability$Ocr;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$CoBrowsing;->INSTANCE:Lcom/sightcall/capabilities/Capability$CoBrowsing;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$ChangeCamera;->INSTANCE:Lcom/sightcall/capabilities/Capability$ChangeCamera;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$CameraPause;->INSTANCE:Lcom/sightcall/capabilities/Capability$CameraPause;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/sightcall/capabilities/Capability$Note;->INSTANCE:Lcom/sightcall/capabilities/Capability$Note;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->updateCapabilities(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public stopScreencast()V
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/sightcall/capabilities/Capability;

    sget-object v1, Lcom/sightcall/capabilities/Capability$Snapshot;->INSTANCE:Lcom/sightcall/capabilities/Capability$Snapshot;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$Zoom;->INSTANCE:Lcom/sightcall/capabilities/Capability$Zoom;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$Flashlight;->INSTANCE:Lcom/sightcall/capabilities/Capability$Flashlight;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$ShareFromGallery;->INSTANCE:Lcom/sightcall/capabilities/Capability$ShareFromGallery;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$Ocr;->INSTANCE:Lcom/sightcall/capabilities/Capability$Ocr;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$CoBrowsing;->INSTANCE:Lcom/sightcall/capabilities/Capability$CoBrowsing;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$Note;->INSTANCE:Lcom/sightcall/capabilities/Capability$Note;

    const/4 v3, 0x6

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$ChangeCamera;->INSTANCE:Lcom/sightcall/capabilities/Capability$ChangeCamera;

    const/4 v3, 0x7

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$CameraPause;->INSTANCE:Lcom/sightcall/capabilities/Capability$CameraPause;

    const/16 v3, 0x8

    aput-object v1, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v2, v1}, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->updateCapabilities$default(Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public stopVideo()V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sightcall/capabilities/Capability;

    sget-object v1, Lcom/sightcall/capabilities/Capability$Snapshot;->INSTANCE:Lcom/sightcall/capabilities/Capability$Snapshot;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$Zoom;->INSTANCE:Lcom/sightcall/capabilities/Capability$Zoom;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sightcall/capabilities/Capability$Flashlight;->INSTANCE:Lcom/sightcall/capabilities/Capability$Flashlight;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$Ocr;->INSTANCE:Lcom/sightcall/capabilities/Capability$Ocr;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$ChangeCamera;->INSTANCE:Lcom/sightcall/capabilities/Capability$ChangeCamera;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    sget-object v1, Lcom/sightcall/capabilities/Capability$CameraPause;->INSTANCE:Lcom/sightcall/capabilities/Capability$CameraPause;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v2, v1}, Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;->updateCapabilities$default(Lcom/sightcall/capabilities/CapabilitiesRepositoryImpl;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method
