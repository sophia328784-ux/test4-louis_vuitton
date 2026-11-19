.class public abstract Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration$BlossomConfiguration;,
        Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration$DefaultConfiguration;,
        Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration$PDPConfiguration;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;",
        "",
        "DefaultConfiguration",
        "PDPConfiguration",
        "BlossomConfiguration",
        "Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration$BlossomConfiguration;",
        "Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration$DefaultConfiguration;",
        "Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration$PDPConfiguration;",
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


# instance fields
.field public final A:F

.field public final B:Z

.field public final C:Z

.field public final D:F

.field public final E:F

.field public final F:F

.field public final G:F

.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:F

.field public final h:F

.field public final i:F

.field public final j:F

.field public final k:F

.field public final l:F

.field public final m:F

.field public final n:F

.field public final o:F

.field public final p:F

.field public final q:F

.field public final r:F

.field public final s:F

.field public final t:F

.field public final u:F

.field public final v:F

.field public final w:D

.field public final x:D

.field public final y:F

.field public final z:F


# direct methods
.method public synthetic constructor <init>(FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDFFFDZZFFFFIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 56

    move/from16 v0, p60

    move/from16 v1, p61

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_1

    const v4, 0x3e75c28f    # 0.24f

    goto :goto_1

    :cond_1
    move/from16 v4, p2

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    const v5, 0x3f547ae1    # 0.83f

    goto :goto_2

    :cond_2
    move/from16 v5, p3

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_3
    move/from16 v6, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    const v7, 0x45bb8000    # 6000.0f

    goto :goto_4

    :cond_4
    move/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    const v8, 0x48f42400    # 500000.0f

    goto :goto_5

    :cond_5
    move/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    const/high16 v9, -0x40800000    # -1.0f

    goto :goto_6

    :cond_6
    move/from16 v9, p7

    :goto_6
    and-int/lit16 v11, v0, 0x80

    if-eqz v11, :cond_7

    const/high16 v11, -0x40800000    # -1.0f

    goto :goto_7

    :cond_7
    move/from16 v11, p8

    :goto_7
    and-int/lit16 v12, v0, 0x100

    if-eqz v12, :cond_8

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_8
    move/from16 v12, p9

    :goto_8
    and-int/lit16 v13, v0, 0x200

    if-eqz v13, :cond_9

    const v13, 0x4d270320    # 1.75124992E8f

    goto :goto_9

    :cond_9
    move/from16 v13, p10

    :goto_9
    and-int/lit16 v14, v0, 0x400

    if-eqz v14, :cond_a

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_a
    move/from16 v14, p11

    :goto_a
    and-int/lit16 v15, v0, 0x800

    if-eqz v15, :cond_b

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_b

    :cond_b
    move/from16 v15, p12

    :goto_b
    and-int/lit16 v3, v0, 0x1000

    if-eqz v3, :cond_c

    const/high16 v3, -0x40800000    # -1.0f

    goto :goto_c

    :cond_c
    move/from16 v3, p13

    :goto_c
    and-int/lit16 v10, v0, 0x2000

    const/high16 v16, -0x3e600000    # -20.0f

    if-eqz v10, :cond_d

    move/from16 v10, v16

    goto :goto_d

    :cond_d
    move/from16 v10, p14

    :goto_d
    move/from16 v17, v2

    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_e

    goto :goto_e

    :cond_e
    move/from16 v16, p15

    :goto_e
    const v2, 0x8000

    and-int v18, v0, v2

    const/16 v19, 0x0

    if-eqz v18, :cond_f

    move/from16 v18, v19

    goto :goto_f

    :cond_f
    move/from16 v18, p16

    :goto_f
    const/high16 v20, 0x10000

    and-int v21, v0, v20

    if-eqz v21, :cond_10

    const/high16 v21, 0x41200000    # 10.0f

    goto :goto_10

    :cond_10
    move/from16 v21, p17

    :goto_10
    const/high16 v22, 0x20000

    and-int v22, v0, v22

    const/high16 v23, 0x42c80000    # 100.0f

    if-eqz v22, :cond_11

    move/from16 v22, v23

    goto :goto_11

    :cond_11
    move/from16 v22, p18

    :goto_11
    const/high16 v24, 0x40000

    and-int v24, v0, v24

    if-eqz v24, :cond_12

    const v24, 0x4e0ed7b0    # 5.9912499E8f

    goto :goto_12

    :cond_12
    move/from16 v24, p19

    :goto_12
    const/high16 v25, 0x80000

    and-int v25, v0, v25

    if-eqz v25, :cond_13

    move/from16 v25, v19

    goto :goto_13

    :cond_13
    move/from16 v25, p20

    :goto_13
    const/high16 v26, 0x100000

    and-int v26, v0, v26

    if-eqz v26, :cond_14

    const/high16 v26, -0x40800000    # -1.0f

    goto :goto_14

    :cond_14
    move/from16 v26, p21

    :goto_14
    const/high16 v27, 0x200000

    and-int v27, v0, v27

    if-eqz v27, :cond_15

    move/from16 v27, v19

    goto :goto_15

    :cond_15
    move/from16 v27, p22

    :goto_15
    const/high16 v28, 0x400000

    and-int v28, v0, v28

    if-eqz v28, :cond_16

    move/from16 v28, v19

    goto :goto_16

    :cond_16
    move/from16 v28, p23

    :goto_16
    const/high16 v29, 0x800000

    and-int v29, v0, v29

    if-eqz v29, :cond_17

    const/high16 v29, 0x41f00000    # 30.0f

    goto :goto_17

    :cond_17
    move/from16 v29, p24

    :goto_17
    const/high16 v30, 0x1000000

    and-int v30, v0, v30

    if-eqz v30, :cond_18

    const/high16 v30, 0x42480000    # 50.0f

    goto :goto_18

    :cond_18
    move/from16 v30, p25

    :goto_18
    const/high16 v31, 0x2000000

    and-int v31, v0, v31

    if-eqz v31, :cond_19

    move/from16 v31, v23

    goto :goto_19

    :cond_19
    move/from16 v31, p26

    :goto_19
    const/high16 v32, 0x4000000

    and-int v32, v0, v32

    if-eqz v32, :cond_1a

    move/from16 v32, v23

    goto :goto_1a

    :cond_1a
    move/from16 v32, p27

    :goto_1a
    const/high16 v33, 0x8000000

    and-int v33, v0, v33

    if-eqz v33, :cond_1b

    const v33, 0x4dbe5150    # 3.99124992E8f

    goto :goto_1b

    :cond_1b
    move/from16 v33, p28

    :goto_1b
    const/high16 v34, 0x10000000

    and-int v34, v0, v34

    if-eqz v34, :cond_1c

    move/from16 v34, v19

    goto :goto_1c

    :cond_1c
    move/from16 v34, p29

    :goto_1c
    const/high16 v35, 0x20000000

    and-int v35, v0, v35

    if-eqz v35, :cond_1d

    const/high16 v35, 0x3f800000    # 1.0f

    goto :goto_1d

    :cond_1d
    move/from16 v35, p30

    :goto_1d
    const/high16 v36, 0x40000000    # 2.0f

    and-int v36, v0, v36

    if-eqz v36, :cond_1e

    move/from16 v36, v19

    goto :goto_1e

    :cond_1e
    move/from16 v36, p31

    :goto_1e
    const/high16 v37, -0x80000000

    and-int v0, v0, v37

    if-eqz v0, :cond_1f

    move/from16 v0, v19

    goto :goto_1f

    :cond_1f
    move/from16 v0, p32

    :goto_1f
    and-int/lit8 v37, v1, 0x1

    if-eqz v37, :cond_20

    const/high16 v37, -0x3e100000    # -30.0f

    goto :goto_20

    :cond_20
    move/from16 v37, p33

    :goto_20
    and-int/lit8 v38, v1, 0x2

    if-eqz v38, :cond_21

    const/high16 v38, 0x42480000    # 50.0f

    goto :goto_21

    :cond_21
    move/from16 v38, p34

    :goto_21
    and-int/lit8 v39, v1, 0x4

    if-eqz v39, :cond_22

    move/from16 v39, v23

    goto :goto_22

    :cond_22
    move/from16 v39, p35

    :goto_22
    and-int/lit8 v40, v1, 0x8

    if-eqz v40, :cond_23

    move/from16 v40, v23

    goto :goto_23

    :cond_23
    move/from16 v40, p36

    :goto_23
    and-int/lit8 v41, v1, 0x10

    if-eqz v41, :cond_24

    const/high16 v41, 0x3f800000    # 1.0f

    goto :goto_24

    :cond_24
    move/from16 v41, p37

    :goto_24
    and-int/lit8 v42, v1, 0x20

    if-eqz v42, :cond_25

    const/high16 v42, 0x3f800000    # 1.0f

    goto :goto_25

    :cond_25
    move/from16 v42, p38

    :goto_25
    and-int/lit8 v43, v1, 0x40

    if-eqz v43, :cond_26

    move/from16 v43, v19

    goto :goto_26

    :cond_26
    move/from16 v43, p39

    :goto_26
    move/from16 p1, v2

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_27

    move/from16 v2, v19

    goto :goto_27

    :cond_27
    move/from16 v2, p40

    :goto_27
    move/from16 p2, v0

    and-int/lit16 v0, v1, 0x100

    if-eqz v0, :cond_28

    move/from16 v0, v19

    goto :goto_28

    :cond_28
    move/from16 v0, p41

    :goto_28
    move/from16 p3, v0

    and-int/lit16 v0, v1, 0x200

    if-eqz v0, :cond_29

    const/high16 v0, 0x41800000    # 16.0f

    goto :goto_29

    :cond_29
    move/from16 v0, p42

    :goto_29
    move/from16 p4, v0

    and-int/lit16 v0, v1, 0x400

    if-eqz v0, :cond_2a

    const v0, 0x3c03126f    # 0.008f

    goto :goto_2a

    :cond_2a
    move/from16 v0, p43

    :goto_2a
    move/from16 p5, v0

    and-int/lit16 v0, v1, 0x800

    if-eqz v0, :cond_2b

    goto :goto_2b

    :cond_2b
    move/from16 v23, p44

    :goto_2b
    and-int/lit16 v0, v1, 0x1000

    if-eqz v0, :cond_2c

    const-wide/high16 v44, 0x3ff0000000000000L    # 1.0

    goto :goto_2c

    :cond_2c
    move-wide/from16 v44, p45

    :goto_2c
    and-int/lit16 v0, v1, 0x2000

    if-eqz v0, :cond_2d

    const-wide/16 v46, 0x0

    goto :goto_2d

    :cond_2d
    move-wide/from16 v46, p47

    :goto_2d
    and-int/lit16 v0, v1, 0x4000

    if-eqz v0, :cond_2e

    move/from16 v0, v19

    goto :goto_2e

    :cond_2e
    move/from16 v0, p49

    :goto_2e
    and-int v48, v1, p1

    if-eqz v48, :cond_2f

    goto :goto_2f

    :cond_2f
    move/from16 v19, p50

    :goto_2f
    and-int v20, v1, v20

    if-eqz v20, :cond_30

    const/high16 v20, 0x42960000    # 75.0f

    goto :goto_30

    :cond_30
    move/from16 v20, p51

    :goto_30
    const/high16 v48, 0x20000

    and-int v48, v1, v48

    if-eqz v48, :cond_31

    const-wide/16 v48, 0x0

    goto :goto_31

    :cond_31
    move-wide/from16 v48, p52

    :goto_31
    const/high16 v50, 0x40000

    and-int v50, v1, v50

    const/16 v51, 0x1

    if-eqz v50, :cond_32

    move/from16 v50, v51

    goto :goto_32

    :cond_32
    move/from16 v50, p54

    :goto_32
    const/high16 v52, 0x80000

    and-int v52, v1, v52

    if-eqz v52, :cond_33

    goto :goto_33

    :cond_33
    move/from16 v51, p55

    :goto_33
    const/high16 v52, 0x100000

    and-int v52, v1, v52

    if-eqz v52, :cond_34

    const/high16 v52, 0x447a0000    # 1000.0f

    goto :goto_34

    :cond_34
    move/from16 v52, p56

    :goto_34
    const/high16 v53, 0x200000

    and-int v53, v1, v53

    if-eqz v53, :cond_35

    const/high16 v53, 0x41200000    # 10.0f

    goto :goto_35

    :cond_35
    move/from16 v53, p57

    :goto_35
    const/high16 v54, 0x400000

    and-int v54, v1, v54

    if-eqz v54, :cond_36

    const v54, 0x3ecccccd    # 0.4f

    goto :goto_36

    :cond_36
    move/from16 v54, p58

    :goto_36
    const/high16 v55, 0x800000

    and-int v1, v1, v55

    if-eqz v1, :cond_37

    const v1, 0x3dcccccd    # 0.1f

    goto :goto_37

    :cond_37
    move/from16 v1, p59

    :goto_37
    const/16 v55, 0x0

    move-object/from16 p1, p0

    move/from16 p33, p2

    move/from16 p42, p3

    move/from16 p43, p4

    move/from16 p44, p5

    move/from16 p50, v0

    move/from16 p60, v1

    move/from16 p41, v2

    move/from16 p14, v3

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p15, v10

    move/from16 p9, v11

    move/from16 p10, v12

    move/from16 p11, v13

    move/from16 p12, v14

    move/from16 p13, v15

    move/from16 p16, v16

    move/from16 p2, v17

    move/from16 p17, v18

    move/from16 p51, v19

    move/from16 p52, v20

    move/from16 p18, v21

    move/from16 p19, v22

    move/from16 p45, v23

    move/from16 p20, v24

    move/from16 p21, v25

    move/from16 p22, v26

    move/from16 p23, v27

    move/from16 p24, v28

    move/from16 p25, v29

    move/from16 p26, v30

    move/from16 p27, v31

    move/from16 p28, v32

    move/from16 p29, v33

    move/from16 p30, v34

    move/from16 p31, v35

    move/from16 p32, v36

    move/from16 p34, v37

    move/from16 p35, v38

    move/from16 p36, v39

    move/from16 p37, v40

    move/from16 p38, v41

    move/from16 p39, v42

    move/from16 p40, v43

    move-wide/from16 p46, v44

    move-wide/from16 p48, v46

    move-wide/from16 p53, v48

    move/from16 p55, v50

    move/from16 p56, v51

    move/from16 p57, v52

    move/from16 p58, v53

    move/from16 p59, v54

    move-object/from16 p61, v55

    invoke-direct/range {p1 .. p61}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;-><init>(FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDFFFDZZFFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDFFFDZZFFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 702
    iput p5, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->a:F

    .line 703
    iput p10, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->b:F

    .line 704
    iput p11, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->c:F

    .line 705
    iput p12, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->d:F

    .line 706
    iput p13, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->e:F

    .line 707
    iput p14, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->f:F

    .line 708
    iput p15, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->g:F

    move/from16 p1, p16

    .line 709
    iput p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->h:F

    move/from16 p1, p17

    .line 710
    iput p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->i:F

    move/from16 p1, p18

    .line 711
    iput p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->j:F

    move/from16 p1, p28

    .line 712
    iput p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->k:F

    move/from16 p1, p29

    .line 713
    iput p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->l:F

    move/from16 p1, p30

    .line 714
    iput p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->m:F

    move/from16 p1, p31

    .line 715
    iput p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->n:F

    move/from16 p1, p37

    .line 716
    iput p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->o:F

    move/from16 p1, p38

    .line 717
    iput p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->p:F

    move/from16 p1, p39

    .line 718
    iput p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->q:F

    move/from16 p1, p40

    .line 719
    iput p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->r:F

    move/from16 p1, p41

    .line 720
    iput p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->s:F

    move/from16 p1, p42

    .line 721
    iput p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->t:F

    move/from16 p1, p43

    .line 722
    iput p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->u:F

    move/from16 p1, p44

    .line 723
    iput p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->v:F

    move-wide/from16 p1, p45

    .line 724
    iput-wide p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->w:D

    move-wide/from16 p1, p47

    .line 725
    iput-wide p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->x:D

    move/from16 p1, p49

    .line 726
    iput p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->y:F

    move/from16 p1, p50

    .line 727
    iput p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->z:F

    move/from16 p1, p51

    .line 728
    iput p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->A:F

    move/from16 p1, p54

    .line 729
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->B:Z

    move/from16 p1, p55

    .line 730
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->C:Z

    move/from16 p1, p56

    .line 731
    iput p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->D:F

    move/from16 p1, p57

    .line 732
    iput p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->E:F

    move/from16 p1, p58

    .line 733
    iput p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->F:F

    move/from16 p1, p59

    .line 734
    iput p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->G:F

    return-void
.end method
