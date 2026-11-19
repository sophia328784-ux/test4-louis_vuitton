.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/at$a;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/collect/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/a<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final e:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;


# instance fields
.field public final d:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$a;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$a;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/a;-><init>(II)V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$a;->d:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$a;->d:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method
