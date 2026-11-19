.class final Lcom/perfectcorp/thirdparty/com/google/common/base/d$d;
.super Lcom/perfectcorp/thirdparty/com/google/common/base/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/base/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final c:Lcom/perfectcorp/thirdparty/com/google/common/base/d$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/d$d;

    const-string v1, "CharMatcher.none()"

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/d$c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/thirdparty/com/google/common/base/d$d;->c:Lcom/perfectcorp/thirdparty/com/google/common/base/d$d;

    return-void
.end method


# virtual methods
.method public final c(C)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
