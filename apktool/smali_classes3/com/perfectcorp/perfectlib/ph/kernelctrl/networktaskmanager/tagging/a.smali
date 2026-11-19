.class public final Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a;
.super Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/GsonBaseResponse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a;
    }
.end annotation


# instance fields
.field private final messageDigest:Ljava/lang/String;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "messagedigest"
    .end annotation
.end field

.field private final result:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/GsonBaseResponse;-><init>()V

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a;->result:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a;

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a;->messageDigest:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a;->result:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a$a;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/tagging/a;->messageDigest:Ljava/lang/String;

    return-object p0
.end method
