.class Lcom/powerfront/insidewebsdkandroid/InsideClient$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/powerfront/insidewebsdkandroid/InsideClient;


# direct methods
.method public constructor <init>(Lcom/powerfront/insidewebsdkandroid/InsideClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$10;->a:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$10;->a:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->k:Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->b()V

    :cond_0
    return-void
.end method
