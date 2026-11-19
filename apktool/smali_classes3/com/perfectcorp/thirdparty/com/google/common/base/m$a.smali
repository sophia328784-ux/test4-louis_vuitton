.class abstract Lcom/perfectcorp/thirdparty/com/google/common/base/m$a;
.super Lcom/perfectcorp/thirdparty/com/google/common/base/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/base/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/thirdparty/com/google/common/base/b<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Ljava/lang/CharSequence;

.field public final e:Lcom/perfectcorp/thirdparty/com/google/common/base/d;

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/base/m;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/perfectcorp/thirdparty/com/google/common/base/b$a;->b:I

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/base/b;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/base/m$a;->f:I

    iget-object p1, p1, Lcom/perfectcorp/thirdparty/com/google/common/base/m;->a:Lcom/perfectcorp/thirdparty/com/google/common/base/d;

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/base/m$a;->e:Lcom/perfectcorp/thirdparty/com/google/common/base/d;

    const p1, 0x7fffffff

    iput p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/base/m$a;->g:I

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/base/m$a;->d:Ljava/lang/CharSequence;

    return-void
.end method
