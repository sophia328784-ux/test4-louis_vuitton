.class Lcom/sightcall/universal/agent/registration/OldRegistration$Attributes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/registration/OldRegistration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attributes"
.end annotation


# instance fields
.field final fcmToken:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "fcm-token"
    .end annotation
.end field

.field final googleAppId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "reference"
    .end annotation
.end field

.field final model:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "device"
    .end annotation
.end field

.field final os:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "os-version"
    .end annotation
.end field

.field final temporaryToken:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "temporary-token"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/agent/registration/OldRegistration$Attributes;->model:Ljava/lang/String;

    invoke-static {}, Lcom/sightcall/pratik/utils/SdkUtilsKt;->sdkVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/agent/registration/OldRegistration$Attributes;->os:Ljava/lang/String;

    iput-object p1, p0, Lcom/sightcall/universal/agent/registration/OldRegistration$Attributes;->temporaryToken:Ljava/lang/String;

    iput-object p2, p0, Lcom/sightcall/universal/agent/registration/OldRegistration$Attributes;->fcmToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/sightcall/universal/agent/registration/OldRegistration$Attributes;->googleAppId:Ljava/lang/String;

    return-void
.end method
