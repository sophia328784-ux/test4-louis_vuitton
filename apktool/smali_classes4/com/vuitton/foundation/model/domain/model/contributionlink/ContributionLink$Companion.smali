.class public final Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Companion;",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;",
        "serializer",
        "()Lkotlinx/serialization/KSerializer;",
        "domain"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic a:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Companion;->a:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Companion;

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v2, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-class v3, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AICompanion;

    invoke-virtual {v1, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-class v4, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AppointmentCreate;

    invoke-virtual {v1, v4}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const-class v5, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AudioGuide;

    invoke-virtual {v1, v5}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const-class v6, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$BookingExperience;

    invoke-virtual {v1, v6}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const-class v7, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$CareServiceCreate;

    invoke-virtual {v1, v7}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    const-class v8, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Category;

    invoke-virtual {v1, v8}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const-class v9, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer;

    invoke-virtual {v1, v9}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    const-class v10, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Generic;

    invoke-virtual {v1, v10}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    const-class v11, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ImmersiveArticle;

    invoke-virtual {v1, v11}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    const-class v12, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Monogram;

    invoke-virtual {v1, v12}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    const-class v13, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$MyLv;

    invoke-virtual {v1, v13}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    const-class v14, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$NativeStory;

    invoke-virtual {v1, v14}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    const-class v15, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Other;

    invoke-virtual {v1, v15}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    move-object/from16 p0, v0

    const-class v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Portal;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    move-object/from16 v16, v0

    const-class v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Product;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    move-object/from16 v17, v0

    const-class v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ProductList;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    move-object/from16 v18, v0

    const-class v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$PushNotification;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    move-object/from16 v19, v0

    const-class v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$SeoLandingPage;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    move-object/from16 v20, v0

    const-class v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ShadeFinder;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    move-object/from16 v21, v0

    const-class v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Spotlight;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    move-object/from16 v22, v0

    const-class v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    move-object/from16 v23, v0

    const-class v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Url;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    move-object/from16 v24, v0

    const-class v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$WebView;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    move-object/from16 v25, v0

    const-class v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Wishlist;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    move-object/from16 v26, v0

    const-class v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$WishlistShared;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/16 v1, 0x19

    move-object/from16 v27, v3

    new-array v3, v1, [Lkotlin/reflect/KClass;

    const/4 v1, 0x0

    aput-object v27, v3, v1

    const/16 v27, 0x1

    aput-object v4, v3, v27

    const/4 v4, 0x2

    aput-object v5, v3, v4

    const/4 v5, 0x3

    aput-object v6, v3, v5

    const/4 v6, 0x4

    aput-object v7, v3, v6

    const/4 v7, 0x5

    aput-object v8, v3, v7

    const/4 v8, 0x6

    aput-object v9, v3, v8

    const/4 v9, 0x7

    aput-object v10, v3, v9

    const/16 v10, 0x8

    aput-object v11, v3, v10

    const/16 v11, 0x9

    aput-object v12, v3, v11

    const/16 v12, 0xa

    aput-object v13, v3, v12

    const/16 v13, 0xb

    aput-object v14, v3, v13

    const/16 v14, 0xc

    aput-object v15, v3, v14

    const/16 v15, 0xd

    aput-object v16, v3, v15

    const/16 v16, 0xe

    aput-object v17, v3, v16

    const/16 v17, 0xf

    aput-object v18, v3, v17

    const/16 v18, 0x10

    aput-object v19, v3, v18

    const/16 v19, 0x11

    aput-object v20, v3, v19

    const/16 v20, 0x12

    aput-object v21, v3, v20

    const/16 v21, 0x13

    aput-object v22, v3, v21

    const/16 v22, 0x14

    aput-object v23, v3, v22

    const/16 v23, 0x15

    aput-object v24, v3, v23

    const/16 v23, 0x16

    aput-object v25, v3, v23

    const/16 v23, 0x17

    aput-object v26, v3, v23

    const/16 v23, 0x18

    aput-object v0, v3, v23

    new-instance v0, Lkotlinx/serialization/internal/ObjectSerializer;

    move/from16 v23, v4

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AICompanion;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AICompanion;

    move/from16 v24, v5

    new-array v5, v1, [Ljava/lang/annotation/Annotation;

    move/from16 v25, v6

    const-string v6, "com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink.AICompanion"

    invoke-direct {v0, v6, v4, v5}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    new-instance v4, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$CareServiceCreate;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$CareServiceCreate;

    new-array v6, v1, [Ljava/lang/annotation/Annotation;

    move/from16 v26, v7

    const-string v7, "com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink.CareServiceCreate"

    invoke-direct {v4, v7, v5, v6}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    new-instance v5, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v6, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$MyLv;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$MyLv;

    new-array v7, v1, [Ljava/lang/annotation/Annotation;

    move/from16 v28, v8

    const-string v8, "com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink.MyLv"

    invoke-direct {v5, v8, v6, v7}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    new-instance v6, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v7, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$PushNotification;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$PushNotification;

    new-array v8, v1, [Ljava/lang/annotation/Annotation;

    move/from16 v29, v9

    const-string v9, "com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink.PushNotification"

    invoke-direct {v6, v9, v7, v8}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    new-instance v7, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v8, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ShadeFinder;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ShadeFinder;

    new-array v9, v1, [Ljava/lang/annotation/Annotation;

    move/from16 v30, v10

    const-string v10, "com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink.ShadeFinder"

    invoke-direct {v7, v10, v8, v9}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    new-instance v8, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v9, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Unknown;

    new-array v10, v1, [Ljava/lang/annotation/Annotation;

    move/from16 v31, v11

    const-string v11, "com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink.Unknown"

    invoke-direct {v8, v11, v9, v10}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    new-instance v9, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v10, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Wishlist;->INSTANCE:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Wishlist;

    new-array v11, v1, [Ljava/lang/annotation/Annotation;

    move/from16 v32, v12

    const-string v12, "com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink.Wishlist"

    invoke-direct {v9, v12, v10, v11}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    const/16 v10, 0x19

    new-array v10, v10, [Lkotlinx/serialization/KSerializer;

    aput-object v0, v10, v1

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AppointmentCreate$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AppointmentCreate$$serializer;

    aput-object v0, v10, v27

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AudioGuide$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$AudioGuide$$serializer;

    aput-object v0, v10, v23

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$BookingExperience$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$BookingExperience$$serializer;

    aput-object v0, v10, v24

    aput-object v4, v10, v25

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Category$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Category$$serializer;

    aput-object v0, v10, v26

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ExclusiveOffer$$serializer;

    aput-object v0, v10, v28

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Generic$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Generic$$serializer;

    aput-object v0, v10, v29

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ImmersiveArticle$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ImmersiveArticle$$serializer;

    aput-object v0, v10, v30

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Monogram$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Monogram$$serializer;

    aput-object v0, v10, v31

    aput-object v5, v10, v32

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$NativeStory$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$NativeStory$$serializer;

    aput-object v0, v10, v13

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Other$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Other$$serializer;

    aput-object v0, v10, v14

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Portal$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Portal$$serializer;

    aput-object v0, v10, v15

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Product$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Product$$serializer;

    aput-object v0, v10, v16

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ProductList$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$ProductList$$serializer;

    aput-object v0, v10, v17

    aput-object v6, v10, v18

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$SeoLandingPage$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$SeoLandingPage$$serializer;

    aput-object v0, v10, v19

    aput-object v7, v10, v20

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Spotlight$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Spotlight$$serializer;

    aput-object v0, v10, v21

    aput-object v8, v10, v22

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Url$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$Url$$serializer;

    const/16 v4, 0x15

    aput-object v0, v10, v4

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$WebView$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$WebView$$serializer;

    const/16 v4, 0x16

    aput-object v0, v10, v4

    const/16 v0, 0x17

    aput-object v9, v10, v0

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$WishlistShared$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink$WishlistShared$$serializer;

    const/16 v4, 0x18

    aput-object v0, v10, v4

    new-array v5, v1, [Ljava/lang/annotation/Annotation;

    const-string v1, "com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink"

    move-object/from16 v0, p0

    move-object v4, v10

    invoke-direct/range {v0 .. v5}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method
