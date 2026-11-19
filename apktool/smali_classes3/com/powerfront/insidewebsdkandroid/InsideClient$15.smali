.class Lcom/powerfront/insidewebsdkandroid/InsideClient$15;
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

    iput-object p1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$15;->a:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$15;->a:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    invoke-static {p0}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->b(Lcom/powerfront/insidewebsdkandroid/InsideClient;)V

    return-void
.end method
