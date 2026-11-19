.class abstract Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    const-string v1, "MakeupCamSdkPreferences"

    invoke-direct {v0, v1}, Lcom/perfectcorp/common/utility/BasicPreferences;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a$a;->a:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;

    return-void
.end method
