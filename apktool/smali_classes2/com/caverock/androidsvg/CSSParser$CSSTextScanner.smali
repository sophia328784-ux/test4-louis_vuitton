.class Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;
.super Lcom/caverock/androidsvg/SVGParser$TextScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CSSTextScanner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "(?s)/\\*.*?\\*/"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static r(I)I
    .locals 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 p0, p0, -0x37

    return p0

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    add-int/lit8 p0, p0, -0x57

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public final s()Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->a:Ljava/lang/String;

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x27

    if-eq v0, v1, :cond_1

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->h()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    if-eq v2, v0, :cond_8

    const/16 v5, 0x5c

    if-ne v2, v5, :cond_7

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->h()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_2

    goto :goto_1

    :cond_2
    const/16 v5, 0xa

    if-eq v2, v5, :cond_6

    const/16 v5, 0xd

    if-eq v2, v5, :cond_6

    const/16 v5, 0xc

    if-ne v2, v5, :cond_3

    goto :goto_4

    :cond_3
    invoke-static {v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->r(I)I

    move-result v5

    if-eq v5, v4, :cond_7

    move v6, v3

    :goto_2
    const/4 v7, 0x5

    if-gt v6, v7, :cond_5

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->h()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->r(I)I

    move-result v7

    if-ne v7, v4, :cond_4

    goto :goto_3

    :cond_4
    mul-int/lit8 v5, v5, 0x10

    add-int/2addr v5, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    int-to-char v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->h()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_7
    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->h()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final t()Ljava/lang/String;
    .locals 10

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    move-result v0

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->a()I

    move-result v0

    :cond_1
    const/16 v4, 0x5f

    const/16 v5, 0x7a

    const/16 v6, 0x61

    const/16 v7, 0x5a

    const/16 v8, 0x41

    if-lt v0, v8, :cond_2

    if-le v0, v7, :cond_4

    :cond_2
    if-lt v0, v6, :cond_3

    if-le v0, v5, :cond_4

    :cond_3
    if-ne v0, v4, :cond_a

    :cond_4
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->a()I

    move-result v0

    :goto_0
    if-lt v0, v8, :cond_5

    if-le v0, v7, :cond_9

    :cond_5
    if-lt v0, v6, :cond_6

    if-le v0, v5, :cond_9

    :cond_6
    const/16 v9, 0x30

    if-lt v0, v9, :cond_7

    const/16 v9, 0x39

    if-le v0, v9, :cond_9

    :cond_7
    if-eq v0, v3, :cond_9

    if-ne v0, v4, :cond_8

    goto :goto_1

    :cond_8
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    goto :goto_2

    :cond_9
    :goto_1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->a()I

    move-result v0

    goto :goto_0

    :cond_a
    move v0, v1

    :goto_2
    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    move v1, v0

    :goto_3
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    if-ne v1, v0, :cond_b

    const/4 p0, 0x0

    return-object p0

    :cond_b
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    return-object v0
.end method

.method public final u()Ljava/util/ArrayList;
    .locals 23

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Lcom/caverock/androidsvg/CSSParser$Selector;

    invoke-direct {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;-><init>()V

    :goto_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    move-result v5

    if-nez v5, :cond_48

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_21

    :cond_1
    iget v5, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    iget-object v6, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->a:Ljava/util/ArrayList;

    const/16 v7, 0x2b

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    const/16 v6, 0x3e

    invoke-virtual {v0, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/caverock/androidsvg/CSSParser$Combinator;->CHILD:Lcom/caverock/androidsvg/CSSParser$Combinator;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Lcom/caverock/androidsvg/CSSParser$Combinator;->FOLLOWS:Lcom/caverock/androidsvg/CSSParser$Combinator;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    goto :goto_2

    :cond_4
    :goto_1
    move-object v6, v2

    :goto_2
    const/16 v8, 0x2a

    invoke-virtual {v0, v8}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    move-result v8

    if-eqz v8, :cond_5

    new-instance v8, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v8, v6, v2}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->t()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    new-instance v9, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v9, v6, v8}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    iget v8, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->b:I

    add-int/2addr v8, v3

    iput v8, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->b:I

    move-object v8, v9

    goto :goto_3

    :cond_6
    move-object v8, v2

    :goto_3
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    move-result v9

    if-nez v9, :cond_44

    const/16 v9, 0x2e

    invoke-virtual {v0, v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    move-result v9

    if-eqz v9, :cond_9

    if-nez v8, :cond_7

    new-instance v8, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v8, v6, v2}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->t()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    const-string v10, "class"

    sget-object v11, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    invoke-virtual {v8, v10, v11, v9}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->a(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->a()V

    goto :goto_3

    :cond_8
    new-instance v0, Lcom/caverock/androidsvg/CSSParseException;

    const-string v1, "Invalid \".class\" simpleSelectors"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const/16 v9, 0x23

    invoke-virtual {v0, v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    move-result v9

    if-eqz v9, :cond_c

    if-nez v8, :cond_a

    new-instance v8, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v8, v6, v2}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->t()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    const-string v10, "id"

    sget-object v11, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    invoke-virtual {v8, v10, v11, v9}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->a(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    iget v9, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->b:I

    const v10, 0xf4240

    add-int/2addr v9, v10

    iput v9, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->b:I

    goto :goto_3

    :cond_b
    new-instance v0, Lcom/caverock/androidsvg/CSSParseException;

    const-string v1, "Invalid \"#id\" simpleSelectors"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/16 v9, 0x5b

    invoke-virtual {v0, v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    move-result v9

    if-eqz v9, :cond_18

    if-nez v8, :cond_d

    new-instance v8, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v8, v6, v2}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->t()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Invalid attribute simpleSelectors"

    if-eqz v9, :cond_17

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    const/16 v11, 0x3d

    invoke-virtual {v0, v11}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    move-result v11

    if-eqz v11, :cond_e

    sget-object v11, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    goto :goto_4

    :cond_e
    const-string v11, "~="

    invoke-virtual {v0, v11}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->e(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    sget-object v11, Lcom/caverock/androidsvg/CSSParser$AttribOp;->INCLUDES:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    goto :goto_4

    :cond_f
    const-string v11, "|="

    invoke-virtual {v0, v11}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->e(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    sget-object v11, Lcom/caverock/androidsvg/CSSParser$AttribOp;->DASHMATCH:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    goto :goto_4

    :cond_10
    move-object v11, v2

    :goto_4
    if-eqz v11, :cond_14

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    move-result v12

    if-eqz v12, :cond_11

    move-object v12, v2

    goto :goto_5

    :cond_11
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->k()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_12

    goto :goto_5

    :cond_12
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->t()Ljava/lang/String;

    move-result-object v12

    :goto_5
    if-eqz v12, :cond_13

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    goto :goto_6

    :cond_13
    new-instance v0, Lcom/caverock/androidsvg/CSSParseException;

    invoke-direct {v0, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    move-object v12, v2

    :goto_6
    const/16 v13, 0x5d

    invoke-virtual {v0, v13}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    move-result v13

    if-eqz v13, :cond_16

    if-nez v11, :cond_15

    sget-object v11, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EXISTS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    :cond_15
    invoke-virtual {v8, v9, v11, v12}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->a(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->a()V

    goto/16 :goto_3

    :cond_16
    new-instance v0, Lcom/caverock/androidsvg/CSSParseException;

    invoke-direct {v0, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Lcom/caverock/androidsvg/CSSParseException;

    invoke-direct {v0, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    const/16 v9, 0x3a

    invoke-virtual {v0, v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    move-result v9

    if-eqz v9, :cond_44

    if-nez v8, :cond_19

    new-instance v8, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v8, v6, v2}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    :cond_19
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->t()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_43

    invoke-static {v9}, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    move-result-object v10

    sget-object v11, Lcom/caverock/androidsvg/CSSParser$1;->b:[I

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v11, v11, v12

    const/4 v12, 0x0

    const-string v13, "Invalid or missing parameter section for pseudo class: "

    const/16 v14, 0x29

    const/16 v15, 0x28

    packed-switch v11, :pswitch_data_0

    new-instance v0, Lcom/caverock/androidsvg/CSSParseException;

    const-string v1, "Unsupported pseudo class: "

    invoke-virtual {v1, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v10, Lcom/caverock/androidsvg/CSSParser$PseudoClassNotSupported;

    invoke-direct {v10, v9}, Lcom/caverock/androidsvg/CSSParser$PseudoClassNotSupported;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->a()V

    :goto_7
    move-object v7, v8

    goto/16 :goto_20

    :pswitch_1
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    move-result v10

    if-eqz v10, :cond_1a

    goto :goto_8

    :cond_1a
    iget v10, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    invoke-virtual {v0, v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    move-result v11

    if-nez v11, :cond_1b

    goto :goto_8

    :cond_1b
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    move-object v11, v2

    :cond_1c
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->t()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_1d

    iput v10, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    goto :goto_8

    :cond_1d
    if-nez v11, :cond_1e

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :cond_1e
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->p()Z

    move-result v12

    if-nez v12, :cond_1c

    invoke-virtual {v0, v14}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    move-result v11

    if-eqz v11, :cond_1f

    goto :goto_8

    :cond_1f
    iput v10, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    :goto_8
    new-instance v10, Lcom/caverock/androidsvg/CSSParser$PseudoClassNotSupported;

    invoke-direct {v10, v9}, Lcom/caverock/androidsvg/CSSParser$PseudoClassNotSupported;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->a()V

    goto :goto_7

    :pswitch_2
    new-instance v10, Lcom/caverock/androidsvg/CSSParser$PseudoClassTarget;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->a()V

    goto :goto_7

    :pswitch_3
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    move-result v10

    if-eqz v10, :cond_20

    :goto_9
    move-object v11, v2

    goto :goto_b

    :cond_20
    iget v10, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    invoke-virtual {v0, v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    move-result v11

    if-nez v11, :cond_21

    goto :goto_9

    :cond_21
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->u()Ljava/util/ArrayList;

    move-result-object v11

    if-nez v11, :cond_22

    iput v10, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    goto :goto_9

    :cond_22
    invoke-virtual {v0, v14}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    move-result v12

    if-nez v12, :cond_23

    iput v10, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    goto :goto_9

    :cond_23
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_24
    :goto_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_29

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/caverock/androidsvg/CSSParser$Selector;

    iget-object v12, v12, Lcom/caverock/androidsvg/CSSParser$Selector;->a:Ljava/util/ArrayList;

    if-nez v12, :cond_25

    goto :goto_b

    :cond_25
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_26
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_24

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    iget-object v14, v14, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->d:Ljava/util/ArrayList;

    if-nez v14, :cond_27

    goto :goto_a

    :cond_27
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_28
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_26

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/caverock/androidsvg/CSSParser$PseudoClass;

    instance-of v15, v15, Lcom/caverock/androidsvg/CSSParser$PseudoClassNot;

    if-eqz v15, :cond_28

    goto :goto_9

    :cond_29
    :goto_b
    if-eqz v11, :cond_2c

    new-instance v10, Lcom/caverock/androidsvg/CSSParser$PseudoClassNot;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v11, v10, Lcom/caverock/androidsvg/CSSParser$PseudoClassNot;->a:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/high16 v11, -0x80000000

    :cond_2a
    :goto_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/caverock/androidsvg/CSSParser$Selector;

    iget v12, v12, Lcom/caverock/androidsvg/CSSParser$Selector;->b:I

    if-le v12, v11, :cond_2a

    move v11, v12

    goto :goto_c

    :cond_2b
    iput v11, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->b:I

    goto/16 :goto_7

    :cond_2c
    new-instance v0, Lcom/caverock/androidsvg/CSSParseException;

    invoke-virtual {v13, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    sget-object v11, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->nth_child:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-eq v10, v11, :cond_2e

    sget-object v11, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->nth_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-ne v10, v11, :cond_2d

    goto :goto_d

    :cond_2d
    move/from16 v20, v12

    goto :goto_e

    :cond_2e
    :goto_d
    move/from16 v20, v3

    :goto_e
    sget-object v11, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->nth_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-eq v10, v11, :cond_30

    sget-object v11, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->nth_last_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-ne v10, v11, :cond_2f

    goto :goto_f

    :cond_2f
    move/from16 v21, v12

    goto :goto_10

    :cond_30
    :goto_f
    move/from16 v21, v3

    :goto_10
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    move-result v10

    if-eqz v10, :cond_31

    :goto_11
    move-object v11, v2

    move-object/from16 v22, v8

    goto/16 :goto_1d

    :cond_31
    iget v10, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    invoke-virtual {v0, v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    move-result v11

    if-nez v11, :cond_32

    goto :goto_11

    :cond_32
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    const-string v11, "odd"

    invoke-virtual {v0, v11}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->e(Ljava/lang/String;)Z

    move-result v11

    const/4 v15, 0x2

    if-eqz v11, :cond_33

    new-instance v11, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;

    invoke-direct {v11, v15, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;-><init>(II)V

    :goto_12
    move-object/from16 v22, v8

    goto/16 :goto_1c

    :cond_33
    const-string v11, "even"

    invoke-virtual {v0, v11}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->e(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_34

    new-instance v11, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;

    invoke-direct {v11, v15, v12}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;-><init>(II)V

    goto :goto_12

    :cond_34
    invoke-virtual {v0, v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    move-result v11

    const/16 v15, 0x2d

    if-eqz v11, :cond_35

    goto :goto_13

    :cond_35
    invoke-virtual {v0, v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    move-result v11

    if-eqz v11, :cond_36

    const/4 v11, -0x1

    goto :goto_14

    :cond_36
    :goto_13
    move v11, v3

    :goto_14
    iget v2, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    iget v12, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->c:I

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->a:Ljava/lang/String;

    invoke-static {v2, v12, v3}, Lcom/caverock/androidsvg/IntegerParser;->a(IILjava/lang/String;)Lcom/caverock/androidsvg/IntegerParser;

    move-result-object v2

    if-eqz v2, :cond_37

    iget v14, v2, Lcom/caverock/androidsvg/IntegerParser;->a:I

    iput v14, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    :cond_37
    const/16 v14, 0x6e

    invoke-virtual {v0, v14}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    move-result v14

    if-nez v14, :cond_39

    const/16 v14, 0x4e

    invoke-virtual {v0, v14}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    move-result v14

    if-eqz v14, :cond_38

    goto :goto_15

    :cond_38
    move-object v3, v2

    move v14, v7

    move-object/from16 v22, v8

    move v15, v11

    const/4 v2, 0x0

    const/4 v11, 0x1

    goto :goto_19

    :cond_39
    :goto_15
    if-eqz v2, :cond_3a

    move-object/from16 v22, v8

    goto :goto_16

    :cond_3a
    new-instance v2, Lcom/caverock/androidsvg/IntegerParser;

    move-object/from16 v22, v8

    const-wide/16 v7, 0x1

    iget v14, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    invoke-direct {v2, v7, v8, v14}, Lcom/caverock/androidsvg/IntegerParser;-><init>(JI)V

    :goto_16
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    const/16 v14, 0x2b

    invoke-virtual {v0, v14}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    move-result v7

    if-nez v7, :cond_3b

    invoke-virtual {v0, v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    move-result v7

    if-eqz v7, :cond_3b

    const/4 v15, -0x1

    goto :goto_17

    :cond_3b
    const/4 v15, 0x1

    :goto_17
    if-eqz v7, :cond_3d

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    iget v7, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    invoke-static {v7, v12, v3}, Lcom/caverock/androidsvg/IntegerParser;->a(IILjava/lang/String;)Lcom/caverock/androidsvg/IntegerParser;

    move-result-object v3

    if-eqz v3, :cond_3c

    iget v7, v3, Lcom/caverock/androidsvg/IntegerParser;->a:I

    iput v7, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    goto :goto_19

    :cond_3c
    iput v10, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    :goto_18
    const/4 v11, 0x0

    goto :goto_1d

    :cond_3d
    const/4 v3, 0x0

    :goto_19
    new-instance v7, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;

    if-nez v2, :cond_3e

    move v12, v15

    const/4 v11, 0x0

    goto :goto_1a

    :cond_3e
    move v12, v15

    iget-wide v14, v2, Lcom/caverock/androidsvg/IntegerParser;->b:J

    long-to-int v2, v14

    mul-int/2addr v11, v2

    :goto_1a
    if-nez v3, :cond_3f

    const/4 v12, 0x0

    goto :goto_1b

    :cond_3f
    iget-wide v2, v3, Lcom/caverock/androidsvg/IntegerParser;->b:J

    long-to-int v2, v2

    mul-int/2addr v12, v2

    :goto_1b
    invoke-direct {v7, v11, v12}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;-><init>(II)V

    move-object v11, v7

    :goto_1c
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    move-result v2

    if-eqz v2, :cond_40

    goto :goto_1d

    :cond_40
    iput v10, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    goto :goto_18

    :goto_1d
    if-eqz v11, :cond_41

    new-instance v16, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;

    iget v2, v11, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;->a:I

    iget v3, v11, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;->b:I

    move-object/from16 v7, v22

    iget-object v9, v7, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->b:Ljava/lang/String;

    move/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v17, v9

    invoke-direct/range {v16 .. v21}, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;-><init>(Ljava/lang/String;IIZZ)V

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->a()V

    move-object/from16 v10, v16

    :goto_1e
    const/4 v2, 0x0

    const/4 v3, 0x1

    goto/16 :goto_20

    :cond_41
    new-instance v0, Lcom/caverock/androidsvg/CSSParseException;

    invoke-virtual {v13, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    move-object v7, v8

    new-instance v10, Lcom/caverock/androidsvg/CSSParser$PseudoClassEmpty;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->a()V

    goto :goto_1e

    :pswitch_6
    move-object v7, v8

    new-instance v10, Lcom/caverock/androidsvg/CSSParser$PseudoClassRoot;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->a()V

    goto :goto_1e

    :pswitch_7
    move-object v7, v8

    new-instance v10, Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;

    iget-object v2, v7, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->b:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v10, v3, v2}, Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->a()V

    :goto_1f
    const/4 v2, 0x0

    goto :goto_20

    :pswitch_8
    move-object v7, v8

    new-instance v11, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;

    const/16 v16, 0x1

    iget-object v12, v7, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->b:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-direct/range {v11 .. v16}, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;-><init>(Ljava/lang/String;IIZZ)V

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->a()V

    move-object v10, v11

    goto :goto_1f

    :pswitch_9
    move-object v7, v8

    new-instance v12, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;

    const/16 v17, 0x1

    iget-object v13, v7, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->b:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-direct/range {v12 .. v17}, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;-><init>(Ljava/lang/String;IIZZ)V

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->a()V

    move-object v10, v12

    goto :goto_1f

    :pswitch_a
    move-object v7, v8

    new-instance v10, Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;

    const/4 v2, 0x0

    const/4 v9, 0x0

    invoke-direct {v10, v9, v2}, Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->a()V

    goto :goto_20

    :pswitch_b
    move-object v7, v8

    new-instance v11, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-direct/range {v11 .. v16}, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;-><init>(Ljava/lang/String;IIZZ)V

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->a()V

    move-object v10, v11

    goto :goto_20

    :pswitch_c
    move-object v7, v8

    new-instance v12, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-direct/range {v12 .. v17}, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;-><init>(Ljava/lang/String;IIZZ)V

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->a()V

    move-object v10, v12

    :goto_20
    iget-object v9, v7, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->d:Ljava/util/ArrayList;

    if-nez v9, :cond_42

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v7, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->d:Ljava/util/ArrayList;

    :cond_42
    iget-object v9, v7, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->d:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v8, v7

    const/16 v7, 0x2b

    goto/16 :goto_3

    :cond_43
    new-instance v0, Lcom/caverock/androidsvg/CSSParseException;

    const-string v1, "Invalid pseudo class"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    if-eqz v8, :cond_47

    iget-object v5, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->a:Ljava/util/ArrayList;

    if-nez v5, :cond_45

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->a:Ljava/util/ArrayList;

    :cond_45
    iget-object v5, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->p()Z

    move-result v5

    if-nez v5, :cond_46

    goto/16 :goto_0

    :cond_46
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/caverock/androidsvg/CSSParser$Selector;

    invoke-direct {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;-><init>()V

    goto/16 :goto_0

    :cond_47
    iput v5, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    :cond_48
    :goto_21
    iget-object v0, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_49

    goto :goto_22

    :cond_49
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4a
    :goto_22
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
