.class final Lcom/perfectcorp/thirdparty/com/google/gson/internal/ab;
.super Lcom/perfectcorp/thirdparty/com/google/gson/internal/aa;


# instance fields
.field public final synthetic a:Ljava/lang/reflect/Method;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/ab;->a:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/ab;->b:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/aa;->b(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/ab;->b:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/ab;->a:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
