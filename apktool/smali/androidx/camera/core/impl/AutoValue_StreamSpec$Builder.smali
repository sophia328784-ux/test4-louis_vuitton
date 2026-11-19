.class final Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;
.super Landroidx/camera/core/impl/StreamSpec$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/AutoValue_StreamSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Landroid/util/Size;

.field public b:Landroid/util/Size;

.field public c:Landroidx/camera/core/DynamicRange;

.field public d:Ljava/lang/Integer;

.field public e:Landroid/util/Range;

.field public f:Landroidx/camera/core/impl/Config;

.field public g:Ljava/lang/Boolean;


# virtual methods
.method public final a()Landroidx/camera/core/impl/StreamSpec;
    .locals 10

    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->a:Landroid/util/Size;

    if-nez v0, :cond_0

    const-string v0, " resolution"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->b:Landroid/util/Size;

    if-nez v1, :cond_1

    const-string v1, " originalConfiguredResolution"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->c:Landroidx/camera/core/DynamicRange;

    if-nez v1, :cond_2

    const-string v1, " dynamicRange"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->d:Ljava/lang/Integer;

    if-nez v1, :cond_3

    const-string v1, " sessionType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->e:Landroid/util/Range;

    if-nez v1, :cond_4

    const-string v1, " expectedFrameRateRange"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->g:Ljava/lang/Boolean;

    if-nez v1, :cond_5

    const-string v1, " zslDisabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v2, Landroidx/camera/core/impl/AutoValue_StreamSpec;

    iget-object v3, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->a:Landroid/util/Size;

    iget-object v4, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->b:Landroid/util/Size;

    iget-object v5, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->c:Landroidx/camera/core/DynamicRange;

    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->e:Landroid/util/Range;

    iget-object v8, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->f:Landroidx/camera/core/impl/Config;

    iget-object p0, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->g:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-direct/range {v2 .. v9}, Landroidx/camera/core/impl/AutoValue_StreamSpec;-><init>(Landroid/util/Size;Landroid/util/Size;Landroidx/camera/core/DynamicRange;ILandroid/util/Range;Landroidx/camera/core/impl/Config;Z)V

    return-object v2

    :cond_6
    const-string p0, "Missing required properties:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Landroidx/camera/core/DynamicRange;)Landroidx/camera/core/impl/StreamSpec$Builder;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->c:Landroidx/camera/core/DynamicRange;

    return-object p0

    :cond_0
    const-string p0, "Null dynamicRange"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final c(Landroid/util/Range;)Landroidx/camera/core/impl/StreamSpec$Builder;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->e:Landroid/util/Range;

    return-object p0

    :cond_0
    const-string p0, "Null expectedFrameRateRange"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final d(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/StreamSpec$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->f:Landroidx/camera/core/impl/Config;

    return-object p0
.end method

.method public final e(Landroid/util/Size;)Landroidx/camera/core/impl/StreamSpec$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->b:Landroid/util/Size;

    return-object p0
.end method

.method public final f(Landroid/util/Size;)Landroidx/camera/core/impl/StreamSpec$Builder;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->a:Landroid/util/Size;

    return-object p0

    :cond_0
    const-string p0, "Null resolution"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final g(I)Landroidx/camera/core/impl/StreamSpec$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public final h(Z)Landroidx/camera/core/impl/StreamSpec$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/impl/AutoValue_StreamSpec$Builder;->g:Ljava/lang/Boolean;

    return-object p0
.end method
