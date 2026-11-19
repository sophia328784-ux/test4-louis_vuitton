.class final Lcom/perfectcorp/thirdparty/com/google/gson/internal/ad;
.super Lcom/perfectcorp/thirdparty/com/google/gson/internal/aa;


# instance fields
.field public final synthetic a:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/ad;->a:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/aa;->b(Ljava/lang/Class;)V

    const-class v0, Ljava/lang/Object;

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/ad;->a:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
