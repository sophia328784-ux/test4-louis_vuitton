.class public final enum Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONTOUR:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

.field public static final enum EYELASHES:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

.field public static final enum EYEWEAR_3D:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

.field public static final enum EYEWEAR_CUBE:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

.field public static final enum HIGHLIGHT:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

.field public static final enum HIGHLIGHT_CONTOUR:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

.field public static final enum MASCARA:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

.field public static final enum NAIL_POLISH:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

.field public static final enum NAIL_TIP:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

.field public static final enum NONE:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

.field private static final synthetic d:[Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;


# instance fields
.field private final a:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final primaryType:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->UNDEFINED:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const-string v1, "none"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;[Ljava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->NONE:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    new-instance v1, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    sget-object v4, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_LASHES:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->FakeEyelashes:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    const-string v2, "eyelashes"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    const-string v2, "EYELASHES"

    const/4 v3, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;[Ljava/lang/String;)V

    sput-object v1, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->EYELASHES:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    new-instance v2, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    sget-object v6, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->Eyelashes:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    const-string v3, "mascara"

    const-string v8, ""

    filled-new-array {v3, v8}, [Ljava/lang/String;

    move-result-object v7

    const-string v3, "MASCARA"

    move-object v5, v4

    const/4 v4, 0x2

    invoke-direct/range {v2 .. v7}, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;[Ljava/lang/String;)V

    sput-object v2, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->MASCARA:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    new-instance v3, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    sget-object v12, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_CONTOUR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v13, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->FaceHighlight:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    const-string v4, "highlight"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v14

    const-string v10, "HIGHLIGHT"

    const/4 v11, 0x3

    move-object v9, v3

    invoke-direct/range {v9 .. v14}, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;[Ljava/lang/String;)V

    sput-object v3, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->HIGHLIGHT:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    new-instance v4, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    sget-object v13, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->FaceContourPattern:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    const-string v5, "contour"

    filled-new-array {v5, v8}, [Ljava/lang/String;

    move-result-object v14

    const-string v10, "CONTOUR"

    const/4 v11, 0x4

    move-object v9, v4

    invoke-direct/range {v9 .. v14}, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;[Ljava/lang/String;)V

    sput-object v4, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->CONTOUR:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    new-instance v5, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    sget-object v13, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->HighlightContour:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    const-string v6, "highlight_contour"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v14

    const-string v10, "HIGHLIGHT_CONTOUR"

    const/4 v11, 0x5

    move-object v9, v5

    invoke-direct/range {v9 .. v14}, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;[Ljava/lang/String;)V

    sput-object v5, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->HIGHLIGHT_CONTOUR:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    new-instance v6, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    sget-object v12, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_WEAR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const-string v7, "cubeEyewear"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v14

    const-string v10, "EYEWEAR_CUBE"

    const/4 v11, 0x6

    const/4 v13, 0x0

    move-object v9, v6

    invoke-direct/range {v9 .. v14}, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;[Ljava/lang/String;)V

    sput-object v6, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->EYEWEAR_CUBE:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    new-instance v7, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    const-string v9, "real3DEyewear"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v14

    const-string v10, "EYEWEAR_3D"

    const/4 v11, 0x7

    move-object v9, v7

    invoke-direct/range {v9 .. v14}, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;[Ljava/lang/String;)V

    sput-object v7, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->EYEWEAR_3D:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    new-instance v9, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    sget-object v12, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->NAIL:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const-string v10, "polishNail"

    filled-new-array {v10, v8}, [Ljava/lang/String;

    move-result-object v14

    const-string v10, "NAIL_POLISH"

    const/16 v11, 0x8

    invoke-direct/range {v9 .. v14}, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;[Ljava/lang/String;)V

    move-object v8, v9

    sput-object v8, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->NAIL_POLISH:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    new-instance v9, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    const-string v10, "pressOnNail"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v15

    const-string v11, "NAIL_TIP"

    move-object v13, v12

    const/16 v12, 0x9

    const/4 v14, 0x0

    move-object v10, v9

    invoke-direct/range {v10 .. v15}, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;[Ljava/lang/String;)V

    sput-object v9, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->NAIL_TIP:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    filled-new-array/range {v0 .. v9}, [Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->d:[Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->primaryType:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->a:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    const/4 p1, 0x0

    aget-object p1, p5, p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->b:Ljava/lang/String;

    invoke-static {p5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->u([Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->c:Ljava/util/Set;

    return-void
.end method

.method public static d(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;
    .locals 6

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->values()[Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->primaryType:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v4, p0, :cond_1

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->c:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->NONE:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;
    .locals 1

    const-class v0, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->d:[Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->a:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->c:Ljava/util/Set;

    return-object p0
.end method
