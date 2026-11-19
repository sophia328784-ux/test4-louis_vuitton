.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a;->b:Ljava/lang/String;

    if-eqz p3, :cond_0

    invoke-static {p3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/tattooMask/a;->f:Ljava/lang/String;

    return-void
.end method
