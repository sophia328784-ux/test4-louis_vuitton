.class final Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private initialSenderColor:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;

.field private mainScheduler:Lio/reactivex/rxjava3/core/Scheduler;

.field private messageSender:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;

.field private networkConnector:Lcom/sightcall/libraries/network/NetworkConnector;

.field private senderIdGetter:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;

.field private stateHandler:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;

.field private url:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent;
    .locals 12

    iget-object v0, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;->context:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;->mainScheduler:Lio/reactivex/rxjava3/core/Scheduler;

    const-class v1, Lio/reactivex/rxjava3/core/Scheduler;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;->url:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;

    const-class v1, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;->networkConnector:Lcom/sightcall/libraries/network/NetworkConnector;

    const-class v1, Lcom/sightcall/libraries/network/NetworkConnector;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;->messageSender:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;

    const-class v1, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;->stateHandler:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;

    const-class v1, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;->senderIdGetter:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;

    const-class v1, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;->initialSenderColor:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;

    const-class v1, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v2, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;

    new-instance v3, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;

    invoke-direct {v3}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;-><init>()V

    iget-object v4, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;->mainScheduler:Lio/reactivex/rxjava3/core/Scheduler;

    iget-object v6, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;->url:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;

    iget-object v7, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;->networkConnector:Lcom/sightcall/libraries/network/NetworkConnector;

    iget-object v8, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;->messageSender:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;

    iget-object v9, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;->stateHandler:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;

    iget-object v10, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;->senderIdGetter:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;

    iget-object v11, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;->initialSenderColor:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;

    invoke-direct/range {v2 .. v11}, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$AdvancedAnnotationsComponentImpl;-><init>(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Landroid/content/Context;Lio/reactivex/rxjava3/core/Scheduler;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;Lcom/sightcall/libraries/network/NetworkConnector;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;)V

    return-object v2
.end method

.method public bridge synthetic context(Landroid/content/Context;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;->context(Landroid/content/Context;)Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public context(Landroid/content/Context;)Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public bridge synthetic initialSenderColor(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;->initialSenderColor(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;)Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public initialSenderColor(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;)Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;->initialSenderColor:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;

    return-object p0
.end method

.method public bridge synthetic mainScheduler(Lio/reactivex/rxjava3/core/Scheduler;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;->mainScheduler(Lio/reactivex/rxjava3/core/Scheduler;)Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mainScheduler(Lio/reactivex/rxjava3/core/Scheduler;)Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;->mainScheduler:Lio/reactivex/rxjava3/core/Scheduler;

    return-object p0
.end method

.method public bridge synthetic messageSender(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;->messageSender(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;)Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public messageSender(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;)Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;->messageSender:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;

    return-object p0
.end method

.method public bridge synthetic networkConnector(Lcom/sightcall/libraries/network/NetworkConnector;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;->networkConnector(Lcom/sightcall/libraries/network/NetworkConnector;)Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public networkConnector(Lcom/sightcall/libraries/network/NetworkConnector;)Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;->networkConnector:Lcom/sightcall/libraries/network/NetworkConnector;

    return-object p0
.end method

.method public bridge synthetic senderIdGetter(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;->senderIdGetter(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;)Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public senderIdGetter(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;)Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;->senderIdGetter:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;

    return-object p0
.end method

.method public bridge synthetic stateHandler(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;->stateHandler(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;)Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public stateHandler(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;)Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;->stateHandler:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;

    return-object p0
.end method

.method public bridge synthetic url(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsComponent$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;->url(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;)Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public url(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;)Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/advancedannotations/DaggerAdvancedAnnotationsComponent$Builder;->url:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;

    return-object p0
.end method
