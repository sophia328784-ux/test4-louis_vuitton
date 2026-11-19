.class public final Lcom/perfectcorp/perfectlib/ymk/kernelctrl/TestConfigHelper;
.super Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ymk/kernelctrl/TestConfigHelper$a;
    }
.end annotation


# static fields
.field public static final d:Landroid/util/Pair;

.field public static final e:Landroid/util/Pair;

.field public static final f:Landroid/util/Pair;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ALWAYS_FLUSH_COUNTLY"

    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sput-object v1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/TestConfigHelper;->d:Landroid/util/Pair;

    const-string v1, "SHADE_FINDER_LAB"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sput-object v1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/TestConfigHelper;->e:Landroid/util/Pair;

    const-string v1, "TUTORIAL_TESTING"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/TestConfigHelper;->f:Landroid/util/Pair;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper;-><init>()V

    return-void
.end method

.method public static c()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/TestConfigHelper;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/TestConfigHelper$a;->a:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/TestConfigHelper;

    return-object v0
.end method


# virtual methods
.method public final a()[Landroid/util/Pair;
    .locals 2

    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/TestConfigHelper;->e:Landroid/util/Pair;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/TestConfigHelper;->f:Landroid/util/Pair;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/TestConfigHelper;->d:Landroid/util/Pair;

    filled-new-array {v1, p0, v0}, [Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
