.class public final Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a$a;

.field public final c:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

.field public final d:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a$a;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;->a:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;->b:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a$a;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;->c:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)Lcom/perfectcorp/thirdparty/io/reactivex/Maybe;
    .locals 8

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;->b:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a$a;

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/template/t;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->z(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v1

    sget v5, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a:F

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;->c:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    move-object v2, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->a(Ljava/util/List;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;FLcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)Lcom/perfectcorp/thirdparty/io/reactivex/Maybe;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/ph/template/o;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Maybe;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;->b:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a$a;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;->b:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;->c:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;->c:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;->c:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;->b:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a$a;

    filled-new-array {v2, p0, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
