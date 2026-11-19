.class Lcom/sightcall/universal/internal/model/State$Os$Version;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/model/State$Os;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Version"
.end annotation


# instance fields
.field final code:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "code"
    .end annotation
.end field

.field final name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "name"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/model/State$Os$Version;->name:Ljava/lang/String;

    iput p2, p0, Lcom/sightcall/universal/internal/model/State$Os$Version;->code:I

    return-void
.end method

.method public static create()Lcom/sightcall/universal/internal/model/State$Os$Version;
    .locals 3

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {}, Lcom/sightcall/pratik/utils/SdkUtilsKt;->sdkVersion()I

    move-result v1

    new-instance v2, Lcom/sightcall/universal/internal/model/State$Os$Version;

    invoke-direct {v2, v0, v1}, Lcom/sightcall/universal/internal/model/State$Os$Version;-><init>(Ljava/lang/String;I)V

    return-object v2
.end method
