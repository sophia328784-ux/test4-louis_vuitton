.class public Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PayloadCreatorParameters"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;
    }
.end annotation


# instance fields
.field public final A:F

.field public final B:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

.field public final C:Ljava/lang/String;

.field public final D:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

.field public final E:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

.field public final F:Lcom/perfectcorp/perfectlib/jniproxy/VN_Lipliner_Type;

.field public final G:I

.field public final H:I

.field public final I:I

.field public final J:I

.field public final K:I

.field public final L:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

.field public final M:I

.field public final N:I

.field public final O:Ljava/lang/String;

.field public final P:I

.field public final Q:I

.field public final R:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect$Position;

.field public final S:Ljava/lang/String;

.field public final T:Ljava/util/List;

.field public final a:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

.field public final u:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

.field public final v:I

.field public final w:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

.field public final x:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

.field public final y:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

.field public final z:F


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->a:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->a:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->e:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->f:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->g:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->h:Ljava/lang/String;

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->j:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->i:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->k:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->j:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->l:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->k:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->m:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->l:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->q:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->p:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->p:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->o:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->n:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->m:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->o:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->n:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->r:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->q:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->s:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->r:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->t:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->s:I

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->u:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->t:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->v:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->u:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->w:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->v:I

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->x:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->w:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->y:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->x:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->z:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->y:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->A:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->z:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->B:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->A:F

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->C:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->B:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->D:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->C:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->E:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->D:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->F:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->E:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->G:Lcom/perfectcorp/perfectlib/jniproxy/VN_Lipliner_Type;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->F:Lcom/perfectcorp/perfectlib/jniproxy/VN_Lipliner_Type;

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->H:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->G:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->I:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->H:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->J:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->I:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->K:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->J:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->L:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->K:I

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->M:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->L:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->N:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->M:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->O:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->N:I

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->P:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->O:Ljava/lang/String;

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->Q:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->P:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->R:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->Q:I

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->S:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->T:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->T:Ljava/util/List;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters$Builder;->S:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect$Position;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect$Position;->UNDEFINED:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect$Position;

    :goto_0
    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->R:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect$Position;

    return-void
.end method
