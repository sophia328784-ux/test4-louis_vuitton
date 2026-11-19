.class public final Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Pattern"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;
    }
.end annotation


# static fields
.field public static final D:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;

.field public static final E:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;


# instance fields
.field public final A:I

.field public final B:I

.field public final C:I

.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickProfile;

.field public final e:Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;

.field public final f:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;

.field public final g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

.field public final h:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$FaceArtLayer2;

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

.field public final m:F

.field public final n:F

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:Ljava/lang/String;

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;

.field public final v:F

.field public final w:F

.field public final x:F

.field public final y:F

.field public final z:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;-><init>()V

    const-string v1, "hairdye_pattern_one_color_ombre"

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->a:Ljava/lang/String;

    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;->ONE_COLOR_OMBRE:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->l:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->m:F

    iput v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->n:F

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;

    invoke-direct {v2, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;)V

    sput-object v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->D:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;-><init>()V

    const-string v2, "hairdye_pattern_one_color_full"

    iput-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->a:Ljava/lang/String;

    sget-object v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;->ONE_COLOR:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    iput-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->l:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    iput v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->m:F

    iput v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->n:F

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;

    invoke-direct {v1, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;)V

    sput-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->E:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickProfile;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->d:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickProfile;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->e:Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->e:Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->h:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$FaceArtLayer2;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->h:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$FaceArtLayer2;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->f:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->f:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->i:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->i:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->j:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->j:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->k:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->k:I

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->l:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->l:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->m:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->m:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->n:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->n:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->o:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->o:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->p:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->p:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->q:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->q:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->r:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->r:I

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->s:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->t:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->t:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->u:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->u:Ljava/lang/String;

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->v:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->v:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->w:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->w:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->x:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->x:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->y:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->y:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->z:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->z:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->A:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->A:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->B:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->B:I

    iget p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern$Builder;->C:I

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->C:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->l:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    return-object p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->k:I

    return p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->j:I

    return p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->i:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pattern [patternID=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', skuGuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->c:Ljava/lang/String;

    const-string v1, "\']"

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
