.class public final Lcom/perfectcorp/perfectlib/TagGroup;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/TagGroup$Builder;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/TagGroup$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/TagGroup$Builder;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/TagGroup;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/TagGroup$Builder;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/TagGroup;->b:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/perfectcorp/perfectlib/TagGroup$Builder;->c:Z

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/TagGroup;->c:Z

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/TagGroup;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getTagGroupId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/TagGroup;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final isFreeTag()Z
    .locals 0

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/TagGroup;->c:Z

    return p0
.end method
