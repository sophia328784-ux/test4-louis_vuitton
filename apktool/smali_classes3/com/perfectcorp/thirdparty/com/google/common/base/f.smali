.class final Lcom/perfectcorp/thirdparty/com/google/common/base/f;
.super Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/base/f;->b:Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;

    invoke-direct {p0, p2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    if-nez p1, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/base/f;->b:Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
