.class public final Lcom/perfectcorp/perfectlib/SurveyAnswer;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/SurveyAnswer;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    return-void
.end method
