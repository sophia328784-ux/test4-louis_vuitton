.class public final Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FacePredictResult;
.super Ljava/lang/Object;


# instance fields
.field public ageGender:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/AgeGenderPredictResult;

.field public cheekbone:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/CheekbonePredictResult;

.field public eye:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyePredictResult;

.field public eyeColor:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeColorPredictResult;

.field public eyeColorLV:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeColorLVPredictResult;

.field public eyebrow:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyebrowPredictResult;

.field public faceShape:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FaceShapePredictResult;

.field public hairColor:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/HairColorPredictResult;

.field public lipColor:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/LipColorPredictResult;

.field public lipShape:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/LipShapePredictResult;

.field public noseFeature:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/NoseFeaturePredictResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyePredictResult;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyePredictResult;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FacePredictResult;->eye:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyePredictResult;

    new-instance v0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyebrowPredictResult;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyebrowPredictResult;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FacePredictResult;->eyebrow:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyebrowPredictResult;

    new-instance v0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FaceShapePredictResult;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FaceShapePredictResult;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FacePredictResult;->faceShape:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FaceShapePredictResult;

    new-instance v0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/CheekbonePredictResult;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/CheekbonePredictResult;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FacePredictResult;->cheekbone:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/CheekbonePredictResult;

    new-instance v0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/LipShapePredictResult;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/LipShapePredictResult;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FacePredictResult;->lipShape:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/LipShapePredictResult;

    new-instance v0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/NoseFeaturePredictResult;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/NoseFeaturePredictResult;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FacePredictResult;->noseFeature:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/NoseFeaturePredictResult;

    new-instance v0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/LipColorPredictResult;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/LipColorPredictResult;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FacePredictResult;->lipColor:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/LipColorPredictResult;

    new-instance v0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeColorPredictResult;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeColorPredictResult;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FacePredictResult;->eyeColor:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeColorPredictResult;

    new-instance v0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeColorLVPredictResult;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeColorLVPredictResult;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FacePredictResult;->eyeColorLV:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeColorLVPredictResult;

    new-instance v0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/AgeGenderPredictResult;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/AgeGenderPredictResult;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FacePredictResult;->ageGender:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/AgeGenderPredictResult;

    new-instance v0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/HairColorPredictResult;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/HairColorPredictResult;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FacePredictResult;->hairColor:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/HairColorPredictResult;

    return-void
.end method
