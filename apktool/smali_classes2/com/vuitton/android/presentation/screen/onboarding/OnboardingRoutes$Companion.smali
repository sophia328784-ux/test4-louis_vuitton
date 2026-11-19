.class public final Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes;
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
        "Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Companion;",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes;",
        "serializer",
        "()Lkotlinx/serialization/KSerializer;",
        "presentation"
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
.field public static final synthetic a:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Companion;->a:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Companion;

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v2, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes;

    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-class v3, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Accessibility;

    invoke-virtual {v1, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-class v4, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Geolocation;

    invoke-virtual {v1, v4}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const-class v5, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Icons;

    invoke-virtual {v1, v5}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const-class v6, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Login;

    invoke-virtual {v1, v6}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const-class v7, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Notifications;

    invoke-virtual {v1, v7}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    const-class v8, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$PiplCbt;

    invoke-virtual {v1, v8}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const-class v9, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Privacy;

    invoke-virtual {v1, v9}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    const-class v10, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$PrivacyPreCompliance;

    invoke-virtual {v1, v10}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    const-class v11, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$StartNow;

    invoke-virtual {v1, v11}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    const-class v12, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Transition;

    invoke-virtual {v1, v12}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v12, 0xa

    move-object v13, v3

    new-array v3, v12, [Lkotlin/reflect/KClass;

    const/4 v14, 0x0

    aput-object v13, v3, v14

    const/4 v13, 0x1

    aput-object v4, v3, v13

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

    aput-object v1, v3, v11

    new-instance v1, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v15, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Accessibility;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Accessibility;

    move/from16 p0, v4

    new-array v4, v14, [Ljava/lang/annotation/Annotation;

    move/from16 v16, v5

    const-string v5, "com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.Accessibility"

    invoke-direct {v1, v5, v15, v4}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    new-instance v4, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v5, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Geolocation;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Geolocation;

    new-array v15, v14, [Ljava/lang/annotation/Annotation;

    move/from16 v17, v6

    const-string v6, "com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.Geolocation"

    invoke-direct {v4, v6, v5, v15}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    new-instance v5, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v6, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Icons;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Icons;

    new-array v15, v14, [Ljava/lang/annotation/Annotation;

    move/from16 v18, v7

    const-string v7, "com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.Icons"

    invoke-direct {v5, v7, v6, v15}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    new-instance v6, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v7, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Login;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Login;

    new-array v15, v14, [Ljava/lang/annotation/Annotation;

    move/from16 v19, v8

    const-string v8, "com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.Login"

    invoke-direct {v6, v8, v7, v15}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    new-instance v7, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v8, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Notifications;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Notifications;

    new-array v15, v14, [Ljava/lang/annotation/Annotation;

    move/from16 v20, v9

    const-string v9, "com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.Notifications"

    invoke-direct {v7, v9, v8, v15}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    new-instance v8, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v9, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$PiplCbt;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$PiplCbt;

    new-array v15, v14, [Ljava/lang/annotation/Annotation;

    move/from16 v21, v10

    const-string v10, "com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.PiplCbt"

    invoke-direct {v8, v10, v9, v15}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    new-instance v9, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v10, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Privacy;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Privacy;

    new-array v15, v14, [Ljava/lang/annotation/Annotation;

    move/from16 v22, v11

    const-string v11, "com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.Privacy"

    invoke-direct {v9, v11, v10, v15}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    new-instance v10, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v11, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$PrivacyPreCompliance;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$PrivacyPreCompliance;

    new-array v15, v14, [Ljava/lang/annotation/Annotation;

    move/from16 v23, v13

    const-string v13, "com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.PrivacyPreCompliance"

    invoke-direct {v10, v13, v11, v15}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    new-instance v11, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v13, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$StartNow;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$StartNow;

    new-array v15, v14, [Ljava/lang/annotation/Annotation;

    const-string v12, "com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.StartNow"

    invoke-direct {v11, v12, v13, v15}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    new-instance v12, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v13, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Transition;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Transition;

    new-array v15, v14, [Ljava/lang/annotation/Annotation;

    move/from16 v24, v14

    const-string v14, "com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.Transition"

    invoke-direct {v12, v14, v13, v15}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    const/16 v13, 0xa

    new-array v13, v13, [Lkotlinx/serialization/KSerializer;

    aput-object v1, v13, v24

    aput-object v4, v13, v23

    aput-object v5, v13, p0

    aput-object v6, v13, v16

    aput-object v7, v13, v17

    aput-object v8, v13, v18

    aput-object v9, v13, v19

    aput-object v10, v13, v20

    aput-object v11, v13, v21

    aput-object v12, v13, v22

    move/from16 v1, v24

    new-array v5, v1, [Ljava/lang/annotation/Annotation;

    const-string v1, "com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes"

    move-object v4, v13

    invoke-direct/range {v0 .. v5}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method
