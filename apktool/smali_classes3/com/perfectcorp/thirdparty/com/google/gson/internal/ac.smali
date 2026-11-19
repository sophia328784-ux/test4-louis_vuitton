.class final Lcom/perfectcorp/thirdparty/com/google/gson/internal/ac;
.super Lcom/perfectcorp/thirdparty/com/google/gson/internal/aa;


# instance fields
.field public final synthetic a:Ljava/lang/reflect/Method;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;I)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/ac;->a:Ljava/lang/reflect/Method;

    iput p2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/ac;->b:I

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/aa;->b(Ljava/lang/Class;)V

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/ac;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/ac;->a:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
