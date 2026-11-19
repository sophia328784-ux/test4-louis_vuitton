.class public final Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public A:F

.field public B:F

.field public C:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

.field public D:Ljava/lang/String;

.field public E:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

.field public F:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

.field public G:Lcom/perfectcorp/perfectlib/jniproxy/VN_Lipliner_Type;

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

.field public N:I

.field public O:I

.field public P:Ljava/lang/String;

.field public Q:I

.field public R:I

.field public S:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect$Position;

.field public T:Ljava/util/List;

.field public a:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

.field public v:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

.field public w:I

.field public x:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

.field public y:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

.field public z:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->w:I

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;->NONE:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->C:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    sget-object v0, Lcom/perfectcorp/perfectlib/jniproxy/VN_Lipliner_Type;->LIPLINER_THICK:Lcom/perfectcorp/perfectlib/jniproxy/VN_Lipliner_Type;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->G:Lcom/perfectcorp/perfectlib/jniproxy/VN_Lipliner_Type;

    const/4 v0, -0x1

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->H:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->I:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->J:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->K:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->L:I

    const/16 v0, -0x3e8

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->N:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->O:I

    sget-object p0, Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;->VN_BLUSH_MATTE:Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->w:I

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;->NONE:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->C:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    sget-object v0, Lcom/perfectcorp/perfectlib/jniproxy/VN_Lipliner_Type;->LIPLINER_THICK:Lcom/perfectcorp/perfectlib/jniproxy/VN_Lipliner_Type;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->G:Lcom/perfectcorp/perfectlib/jniproxy/VN_Lipliner_Type;

    const/4 v0, -0x1

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->H:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->I:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->J:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->K:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->L:I

    const/16 v0, -0x3e8

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->N:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->O:I

    sget-object v0, Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;->VN_BLUSH_MATTE:Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->a:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->a:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->e:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->f:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->g:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->h:Ljava/lang/String;

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->i:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->j:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->j:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->k:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->k:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->l:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->l:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->m:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->m:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->n:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->n:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->o:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->o:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->p:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->p:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->q:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->q:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->r:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->r:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->s:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->s:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->t:I

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->t:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->u:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->u:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->v:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->v:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->w:I

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->w:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->x:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->x:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->y:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->y:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->z:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->z:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->A:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->A:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->B:F

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->B:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->C:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->D:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->E:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->E:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->F:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->F:Lcom/perfectcorp/perfectlib/jniproxy/VN_Lipliner_Type;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->G:Lcom/perfectcorp/perfectlib/jniproxy/VN_Lipliner_Type;

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->G:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->H:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->H:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->I:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->I:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->J:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->J:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->K:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->K:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->L:I

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->L:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->M:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->M:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->N:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->N:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->O:I

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->O:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->P:Ljava/lang/String;

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->P:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->Q:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->Q:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->R:I

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->R:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect$Position;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->S:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect$Position;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->T:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->T:Ljava/util/List;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->S:Ljava/lang/String;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->d:Ljava/lang/String;

    return-void
.end method

.method public final B(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->b:Ljava/lang/String;

    return-void
.end method

.method public final C(I)V
    .locals 0

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->O:I

    return-void
.end method

.method public final a()Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->P:Ljava/lang/String;

    return-void
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->q:I

    return-void
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->r:I

    return-void
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->s:I

    return-void
.end method

.method public final f(I)V
    .locals 0

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->n:I

    return-void
.end method

.method public final g(I)V
    .locals 0

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->o:I

    return-void
.end method

.method public final h(I)V
    .locals 0

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->t:I

    return-void
.end method

.method public final i(I)V
    .locals 0

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->p:I

    return-void
.end method

.method public final j(Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->y:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->D:Ljava/lang/String;

    return-void
.end method

.method public final l(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->T:Ljava/util/List;

    return-void
.end method

.method public final m(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->w:I

    return-void

    :cond_0
    const/16 p1, 0x32

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->w:I

    return-void
.end method

.method public final n(I)V
    .locals 0

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->N:I

    return-void
.end method

.method public final o(I)V
    .locals 0

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->L:I

    return-void
.end method

.method public final p(I)V
    .locals 0

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->I:I

    return-void
.end method

.method public final q(I)V
    .locals 0

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->H:I

    return-void
.end method

.method public final r(Lcom/perfectcorp/perfectlib/jniproxy/VN_Lipliner_Type;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->G:Lcom/perfectcorp/perfectlib/jniproxy/VN_Lipliner_Type;

    return-void
.end method

.method public final s(I)V
    .locals 0

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->K:I

    return-void
.end method

.method public final t(I)V
    .locals 0

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->J:I

    return-void
.end method

.method public final u(F)V
    .locals 0

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->A:F

    return-void
.end method

.method public final v(F)V
    .locals 0

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->B:F

    return-void
.end method

.method public final w(Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->x:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    return-void
.end method

.method public final x(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect$Position;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->S:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect$Position;

    return-void
.end method

.method public final y(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->i:Ljava/lang/String;

    return-void
.end method

.method public final z(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->c:Ljava/lang/String;

    return-void
.end method
