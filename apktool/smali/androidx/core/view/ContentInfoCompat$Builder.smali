.class public final Landroidx/core/view/ContentInfoCompat$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ContentInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Landroidx/core/view/ContentInfoCompat$BuilderCompat;


# direct methods
.method public constructor <init>(Landroid/content/ClipData;I)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 61
    new-instance v0, Landroidx/core/view/ContentInfoCompat$BuilderCompat31Impl;

    invoke-direct {v0, p1, p2}, Landroidx/core/view/ContentInfoCompat$BuilderCompat31Impl;-><init>(Landroid/content/ClipData;I)V

    iput-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->a:Landroidx/core/view/ContentInfoCompat$BuilderCompat;

    return-void

    .line 62
    :cond_0
    new-instance v0, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;

    .line 63
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, v0, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;->a:Landroid/content/ClipData;

    .line 65
    iput p2, v0, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;->b:I

    .line 66
    iput-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->a:Landroidx/core/view/ContentInfoCompat$BuilderCompat;

    return-void
.end method

.method public constructor <init>(Landroidx/core/view/ContentInfoCompat;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/core/view/ContentInfoCompat$BuilderCompat31Impl;

    invoke-direct {v0, p1}, Landroidx/core/view/ContentInfoCompat$BuilderCompat31Impl;-><init>(Landroidx/core/view/ContentInfoCompat;)V

    iput-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->a:Landroidx/core/view/ContentInfoCompat$BuilderCompat;

    return-void

    :cond_0
    new-instance v0, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p1, Landroidx/core/view/ContentInfoCompat;->a:Landroidx/core/view/ContentInfoCompat$Compat;

    invoke-interface {v1}, Landroidx/core/view/ContentInfoCompat$Compat;->b()Landroid/content/ClipData;

    move-result-object v1

    iput-object v1, v0, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;->a:Landroid/content/ClipData;

    iget-object p1, p1, Landroidx/core/view/ContentInfoCompat;->a:Landroidx/core/view/ContentInfoCompat$Compat;

    invoke-interface {p1}, Landroidx/core/view/ContentInfoCompat$Compat;->getSource()I

    move-result v1

    iput v1, v0, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;->b:I

    invoke-interface {p1}, Landroidx/core/view/ContentInfoCompat$Compat;->d()I

    move-result v1

    iput v1, v0, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;->c:I

    invoke-interface {p1}, Landroidx/core/view/ContentInfoCompat$Compat;->c()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;->d:Landroid/net/Uri;

    invoke-interface {p1}, Landroidx/core/view/ContentInfoCompat$Compat;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, v0, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;->e:Landroid/os/Bundle;

    iput-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->a:Landroidx/core/view/ContentInfoCompat$BuilderCompat;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/core/view/ContentInfoCompat;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->a:Landroidx/core/view/ContentInfoCompat$BuilderCompat;

    invoke-interface {p0}, Landroidx/core/view/ContentInfoCompat$BuilderCompat;->build()Landroidx/core/view/ContentInfoCompat;

    move-result-object p0

    return-object p0
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->a:Landroidx/core/view/ContentInfoCompat$BuilderCompat;

    invoke-interface {p0, p1}, Landroidx/core/view/ContentInfoCompat$BuilderCompat;->setExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method public final c(I)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->a:Landroidx/core/view/ContentInfoCompat$BuilderCompat;

    invoke-interface {p0, p1}, Landroidx/core/view/ContentInfoCompat$BuilderCompat;->b(I)V

    return-void
.end method

.method public final d(Landroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->a:Landroidx/core/view/ContentInfoCompat$BuilderCompat;

    invoke-interface {p0, p1}, Landroidx/core/view/ContentInfoCompat$BuilderCompat;->a(Landroid/net/Uri;)V

    return-void
.end method
