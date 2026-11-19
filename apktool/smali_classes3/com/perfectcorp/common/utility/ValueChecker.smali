.class public abstract Lcom/perfectcorp/common/utility/ValueChecker;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;

.field public static final b:Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;

.field public static final c:Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;

.field public static final d:Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->c(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->c(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;

    move-result-object v2

    sput-object v2, Lcom/perfectcorp/common/utility/ValueChecker;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;

    const/16 v2, 0x96

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->c(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;

    const/16 v2, 0x12c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->c(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;

    const/16 v0, -0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->c(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;

    move-result-object v2

    sput-object v2, Lcom/perfectcorp/common/utility/ValueChecker;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->c(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;

    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->c(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->c(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/common/utility/ValueChecker;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->c(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/common/utility/ValueChecker;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;

    return-void
.end method
