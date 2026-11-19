.class public final Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$initViewModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$initViewModel$1",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "line-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/SharedPreferences;

.field public final synthetic b:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$initViewModel$1;->a:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$initViewModel$1;->b:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$initViewModel$1;->a:Landroid/content/SharedPreferences;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$initViewModel$1;->b:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;

    iget-object p0, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->i:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/api/LineApiClient;

    invoke-direct {p1, v0, p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;-><init>(Landroid/content/SharedPreferences;Lcom/linecorp/linesdk/api/LineApiClient;)V

    return-object p1

    :cond_0
    const-string p0, "Unknown ViewModel class"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
