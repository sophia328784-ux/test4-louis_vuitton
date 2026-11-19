.class public final Lcom/perfectcorp/perfectlib/Tag;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/Tag$Builder;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/Tag$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/Tag$Builder;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/Tag;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/Tag$Builder;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/Tag;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/Tag$Builder;->d:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/Tag$Builder;->c:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/perfectcorp/perfectlib/hc/kernelctrl/networktaskmanager/DownloadImageHelper;->b(Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/Tag;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/Tag;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getTagId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/Tag;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getThumbnail()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/Tag;->c:Ljava/lang/String;

    return-object p0
.end method
