.class public Lcom/sightcall/universal/util/DebugLink;
.super Lcom/sightcall/universal/util/Deeplink;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/util/DebugLink$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0006\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/sightcall/universal/util/DebugLink;",
        "Lcom/sightcall/universal/util/Deeplink;",
        "isEnabled",
        "",
        "<init>",
        "(Z)V",
        "()Z",
        "execute",
        "",
        "context",
        "Landroid/content/Context;",
        "Companion",
        "sdk_installedRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/sightcall/universal/util/DebugLink$Companion;


# instance fields
.field private final isEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sightcall/universal/util/DebugLink$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sightcall/universal/util/DebugLink$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sightcall/universal/util/DebugLink;->Companion:Lcom/sightcall/universal/util/DebugLink$Companion;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/util/Deeplink;-><init>()V

    iput-boolean p1, p0, Lcom/sightcall/universal/util/DebugLink;->isEnabled:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/sightcall/universal/util/DebugLink;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Lcom/sightcall/universal/util/Deeplink;->execute(Landroid/content/Context;)V

    invoke-static {}, Lcom/sightcall/universal/Universal;->settings()Lcom/sightcall/universal/util/UniversalSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/util/UniversalSettings;->loggerVerbosity()Lcom/sightcall/universal/util/Lazy;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sightcall/universal/util/DebugLink;->isEnabled:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sightcall/universal/util/Lazy;->set(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/sightcall/universal/util/UniversalSettings;->apiInterceptor()Lcom/sightcall/universal/util/Lazy;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sightcall/universal/util/DebugLink;->isEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/util/Lazy;->set(Ljava/lang/Object;)V

    iget-boolean p0, p0, Lcom/sightcall/universal/util/DebugLink;->isEnabled:Z

    if-eqz p0, :cond_1

    const-string p0, "enabled"

    goto :goto_1

    :cond_1
    const-string p0, "disabled"

    :goto_1
    const-string v0, "Debug mode "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/util/DebugLink;->isEnabled:Z

    return p0
.end method
