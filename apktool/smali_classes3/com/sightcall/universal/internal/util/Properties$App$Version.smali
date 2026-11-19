.class Lcom/sightcall/universal/internal/util/Properties$App$Version;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/util/Properties$App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Version"
.end annotation


# instance fields
.field private final code:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "code"
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "name"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sightcall/pratik/extensions/ContextExtensionsKt;->appVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/util/Properties$App$Version;->name:Ljava/lang/String;

    invoke-static {p1}, Lnet/rtccloud/sdk/util/Utils;->appVersionCode(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/sightcall/universal/internal/util/Properties$App$Version;->code:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/util/Properties$App$Version;-><init>(Landroid/content/Context;)V

    return-void
.end method
