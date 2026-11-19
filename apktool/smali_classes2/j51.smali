.class public final synthetic Lj51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;I)V
    .locals 0

    iput p2, p0, Lj51;->b:I

    iput-object p1, p0, Lj51;->c:Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lj51;->b:I

    iget-object p0, p0, Lj51;->c:Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;->h:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/agent/userinteraction/handler/RotationUserInteractionHandler;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;->g:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/agent/userinteraction/handler/GestureUserInteractionHandler;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;->f:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler;

    return-object p0

    :pswitch_2
    new-instance v0, Lcom/dynatrace/agent/userinteraction/handler/RotationUserInteractionHandler;

    iget-object v1, p0, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;->a:Lcom/dynatrace/agent/userinteraction/util/UserInteractionLogger;

    iget-object v2, p0, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;->b:Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;

    iget-object p0, p0, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;->d:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;

    invoke-direct {v0, v1, v2, p0}, Lcom/dynatrace/agent/userinteraction/handler/RotationUserInteractionHandler;-><init>(Lcom/dynatrace/agent/userinteraction/util/UserInteractionLogger;Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/dynatrace/agent/userinteraction/handler/GestureUserInteractionHandler;

    iget-object v1, p0, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;->a:Lcom/dynatrace/agent/userinteraction/util/UserInteractionLogger;

    iget-object v2, p0, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;->b:Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;

    iget-object p0, p0, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;->d:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;

    invoke-direct {v0, v1, v2, p0}, Lcom/dynatrace/agent/userinteraction/handler/GestureUserInteractionHandler;-><init>(Lcom/dynatrace/agent/userinteraction/util/UserInteractionLogger;Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;)V

    return-object v0

    :pswitch_4
    new-instance v3, Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler;

    iget-object v4, p0, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;->a:Lcom/dynatrace/agent/userinteraction/util/UserInteractionLogger;

    iget-object v5, p0, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;->b:Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;

    iget-object v6, p0, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;->c:Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionGenerator;

    iget-object v7, p0, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;->d:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;

    iget-object v8, p0, Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;->e:Lcom/dynatrace/agent/userinteraction/handler/UserInteractionConfig;

    invoke-direct/range {v3 .. v8}, Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler;-><init>(Lcom/dynatrace/agent/userinteraction/util/UserInteractionLogger;Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionGenerator;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;Lcom/dynatrace/agent/userinteraction/handler/UserInteractionConfig;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
