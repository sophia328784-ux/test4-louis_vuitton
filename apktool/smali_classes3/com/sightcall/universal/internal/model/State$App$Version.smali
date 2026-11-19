.class Lcom/sightcall/universal/internal/model/State$App$Version;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/model/State$App;
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

    iput-object p1, p0, Lcom/sightcall/universal/internal/model/State$App$Version;->name:Ljava/lang/String;

    iput p2, p0, Lcom/sightcall/universal/internal/model/State$App$Version;->code:I

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/sightcall/universal/internal/model/State$App$Version;
    .locals 2

    invoke-static {p0}, Lcom/sightcall/pratik/extensions/ContextExtensionsKt;->appVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lnet/rtccloud/sdk/util/Utils;->appVersionCode(Landroid/content/Context;)I

    move-result p0

    new-instance v1, Lcom/sightcall/universal/internal/model/State$App$Version;

    invoke-direct {v1, v0, p0}, Lcom/sightcall/universal/internal/model/State$App$Version;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method
