.class public final Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/StateListShapeAppearanceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field public c:[[I

.field public d:[Lcom/google/android/material/shape/ShapeAppearanceModel;

.field public e:Lcom/google/android/material/shape/StateListCornerSize;

.field public f:Lcom/google/android/material/shape/StateListCornerSize;

.field public g:Lcom/google/android/material/shape/StateListCornerSize;

.field public h:Lcom/google/android/material/shape/StateListCornerSize;


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p0}, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;->b()V

    .line 55
    sget-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;->a([ILcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/shape/StateListShapeAppearanceModel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->a:I

    iput v0, p0, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;->a:I

    iget-object v1, p1, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->b:Lcom/google/android/material/shape/ShapeAppearanceModel;

    iput-object v1, p0, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;->b:Lcom/google/android/material/shape/ShapeAppearanceModel;

    iget-object v1, p1, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->c:[[I

    array-length v2, v1

    new-array v2, v2, [[I

    iput-object v2, p0, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;->c:[[I

    iget-object v3, p1, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->d:[Lcom/google/android/material/shape/ShapeAppearanceModel;

    array-length v4, v3

    new-array v4, v4, [Lcom/google/android/material/shape/ShapeAppearanceModel;

    iput-object v4, p0, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;->d:[Lcom/google/android/material/shape/ShapeAppearanceModel;

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;->d:[Lcom/google/android/material/shape/ShapeAppearanceModel;

    iget v1, p0, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;->a:I

    invoke-static {v3, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->e:Lcom/google/android/material/shape/StateListCornerSize;

    iput-object v0, p0, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;->e:Lcom/google/android/material/shape/StateListCornerSize;

    iget-object v0, p1, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->f:Lcom/google/android/material/shape/StateListCornerSize;

    iput-object v0, p0, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;->f:Lcom/google/android/material/shape/StateListCornerSize;

    iget-object v0, p1, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->g:Lcom/google/android/material/shape/StateListCornerSize;

    iput-object v0, p0, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;->g:Lcom/google/android/material/shape/StateListCornerSize;

    iget-object p1, p1, Lcom/google/android/material/shape/StateListShapeAppearanceModel;->h:Lcom/google/android/material/shape/StateListCornerSize;

    iput-object p1, p0, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;->h:Lcom/google/android/material/shape/StateListCornerSize;

    return-void
.end method


# virtual methods
.method public final a([ILcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 5

    iget v0, p0, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;->a:I

    if-eqz v0, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    iput-object p2, p0, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;->b:Lcom/google/android/material/shape/ShapeAppearanceModel;

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;->c:[[I

    array-length v2, v1

    if-lt v0, v2, :cond_2

    add-int/lit8 v2, v0, 0xa

    new-array v3, v2, [[I

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;->c:[[I

    new-array v1, v2, [Lcom/google/android/material/shape/ShapeAppearanceModel;

    iget-object v2, p0, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;->d:[Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;->d:[Lcom/google/android/material/shape/ShapeAppearanceModel;

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;->c:[[I

    iget v1, p0, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;->a:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;->d:[Lcom/google/android/material/shape/ShapeAppearanceModel;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;->a:I

    return-void
.end method

.method public final b()V
    .locals 2

    new-instance v0, Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;->b:Lcom/google/android/material/shape/ShapeAppearanceModel;

    const/16 v0, 0xa

    new-array v1, v0, [[I

    iput-object v1, p0, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;->c:[[I

    new-array v0, v0, [Lcom/google/android/material/shape/ShapeAppearanceModel;

    iput-object v0, p0, Lcom/google/android/material/shape/StateListShapeAppearanceModel$Builder;->d:[Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-void
.end method
