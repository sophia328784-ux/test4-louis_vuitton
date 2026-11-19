.class final Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/CallComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/di/DaggerSdkComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallComponentBuilder"
.end annotation


# instance fields
.field private initialSenderColor:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;

.field private newAnnotationSender:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;

.field private final sdkComponentImpl:Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;

.field private senderIdGetter:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;

.field private sessionConfig:Lcom/sightcall/universal/model/Config;

.field private settingsUrl:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;

.field private stateHandler:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;


# direct methods
.method private constructor <init>(Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;->sdkComponentImpl:Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;-><init>(Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/sightcall/universal/CallComponent;
    .locals 11

    iget-object v0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;->senderIdGetter:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;

    const-class v1, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;->initialSenderColor:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;

    const-class v1, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;->newAnnotationSender:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;

    const-class v1, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;->stateHandler:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;

    const-class v1, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;->settingsUrl:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;

    const-class v1, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;->sessionConfig:Lcom/sightcall/universal/model/Config;

    const-class v1, Lcom/sightcall/universal/model/Config;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v2, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;

    iget-object v3, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;->sdkComponentImpl:Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;

    new-instance v4, Lcom/sightcall/universal/CallComponent$Module;

    invoke-direct {v4}, Lcom/sightcall/universal/CallComponent$Module;-><init>()V

    iget-object v5, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;->senderIdGetter:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;

    iget-object v6, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;->initialSenderColor:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;

    iget-object v7, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;->newAnnotationSender:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;

    iget-object v8, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;->stateHandler:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;

    iget-object v9, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;->settingsUrl:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;

    iget-object v10, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;->sessionConfig:Lcom/sightcall/universal/model/Config;

    invoke-direct/range {v2 .. v10}, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;-><init>(Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;Lcom/sightcall/universal/CallComponent$Module;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;Lcom/sightcall/universal/model/Config;)V

    return-object v2
.end method

.method public bridge synthetic initialSenderColor(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;)Lcom/sightcall/universal/CallComponent$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;->initialSenderColor(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;)Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public initialSenderColor(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;)Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;->initialSenderColor:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;

    return-object p0
.end method

.method public bridge synthetic newAnnotationSender(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;)Lcom/sightcall/universal/CallComponent$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;->newAnnotationSender(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;)Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public newAnnotationSender(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;)Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;->newAnnotationSender:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;

    return-object p0
.end method

.method public bridge synthetic senderIdGetter(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;)Lcom/sightcall/universal/CallComponent$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;->senderIdGetter(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;)Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public senderIdGetter(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;)Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;->senderIdGetter:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;

    return-object p0
.end method

.method public bridge synthetic sessionConfig(Lcom/sightcall/universal/model/Config;)Lcom/sightcall/universal/CallComponent$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;->sessionConfig(Lcom/sightcall/universal/model/Config;)Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public sessionConfig(Lcom/sightcall/universal/model/Config;)Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;->sessionConfig:Lcom/sightcall/universal/model/Config;

    return-object p0
.end method

.method public bridge synthetic settingsUrl(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;)Lcom/sightcall/universal/CallComponent$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;->settingsUrl(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;)Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public settingsUrl(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;)Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;->settingsUrl:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;

    return-object p0
.end method

.method public bridge synthetic stateHandler(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;)Lcom/sightcall/universal/CallComponent$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;->stateHandler(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;)Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public stateHandler(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;)Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;->stateHandler:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;

    return-object p0
.end method
