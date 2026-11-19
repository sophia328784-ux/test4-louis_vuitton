.class public final Lcom/perfectcorp/perfectlib/ph/template/u$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/template/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/util/List;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/template/u;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/u;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/u$a;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/u;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/u$a;->b:Ljava/util/List;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/template/u;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/template/u$a;->c:Ljava/lang/String;

    return-void
.end method
