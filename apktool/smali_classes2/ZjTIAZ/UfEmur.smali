.class public LZjTIAZ/UfEmur;
.super Ljava/lang/Object;


# static fields
.field public static h:I = 0x5e9

.field public static i:I = 0x2056


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/telephony/TelephonyManager;

.field public volatile c:Ljava/lang/Boolean;

.field public volatile d:Ljava/lang/Boolean;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    const-class v0, LZjTIAZ/UfEmur;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, LZjTIAZ/UfEmur;->c:Ljava/lang/Boolean;

    iput-object v0, p0, LZjTIAZ/UfEmur;->d:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iput-object v0, p0, LZjTIAZ/UfEmur;->e:Ljava/lang/String;

    iput-object v0, p0, LZjTIAZ/UfEmur;->f:Ljava/lang/String;

    const-string v0, "#\u0014"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LZjTIAZ/UfEmur;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, LZjTIAZ/UfEmur;->a:Landroid/content/Context;

    const-string v0, "~Mz]V"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, LZjTIAZ/UfEmur;->b:Landroid/telephony/TelephonyManager;

    :try_start_0
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, LZjTIAZ/UfEmur$ufEmur;

    invoke-direct {v0, p0}, LZjTIAZ/UfEmur$ufEmur;-><init>(LZjTIAZ/UfEmur;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "oKqA\\[K\u000eaTGQ\\EDQFD\u0005na{jdnmwl"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_3

    sget p0, LZjTIAZ/UfEmur;->h:I

    const/16 v0, 0x5e8

    if-gt p0, v0, :cond_2

    :goto_0
    sget p0, LZjTIAZ/UfEmur;->h:I

    add-int/lit8 v0, p0, 0x1a

    const/16 v1, 0x56

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    rem-int/lit8 p0, p0, 0x5f

    mul-int/lit16 p0, p0, 0xed3

    sput p0, LZjTIAZ/UfEmur;->h:I

    goto :goto_0

    :cond_1
    :goto_1
    sget p0, LZjTIAZ/UfEmur;->h:I

    rem-int/lit8 p0, p0, 0x20

    mul-int/lit8 p0, p0, 0x39

    sput p0, LZjTIAZ/UfEmur;->h:I

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final b(Ljava/lang/Boolean;)V
    .locals 24

    move-object/from16 v0, p0

    const-string v1, "#"

    const-string v2, "-"

    const-string v3, "oKqA\\[K\u000eaTGQ\\EDQFD\u0005~hokoqjlj`yt|yN^"

    const-string v4, "#\u0014"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x47

    :try_start_0
    iget-object v7, v0, LZjTIAZ/UfEmur;->a:Landroid/content/Context;

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, v0, LZjTIAZ/UfEmur;->b:Landroid/telephony/TelephonyManager;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v8, :cond_0

    goto :goto_2

    :cond_0
    sget v7, LZjTIAZ/UfEmur;->h:I

    xor-int/lit16 v7, v7, 0x5e9

    if-eqz v7, :cond_4

    :goto_0
    sget v0, LZjTIAZ/UfEmur;->h:I

    add-int/lit8 v1, v0, 0x1a

    if-eq v1, v6, :cond_3

    const/16 v2, 0x59

    if-eq v1, v2, :cond_2

    const/16 v3, 0x9b

    if-eq v1, v3, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v0

    xor-int/lit16 v0, v0, 0x74b

    shr-int/2addr v0, v2

    sput v0, LZjTIAZ/UfEmur;->h:I

    :cond_2
    sget v0, LZjTIAZ/UfEmur;->h:I

    xor-int/lit16 v0, v0, 0xd81

    shr-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x4

    :goto_1
    sput v0, LZjTIAZ/UfEmur;->h:I

    goto :goto_0

    :cond_3
    mul-int/lit8 v0, v0, 0x18

    xor-int/lit16 v0, v0, 0x444

    goto :goto_1

    :catch_0
    :cond_4
    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_2
    const-string v8, ","

    invoke-static {v7, v8, v5}, Ld21;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const/16 v7, 0x4b

    const/16 v9, 0x4c

    const/16 v10, 0x5e8

    const/16 v11, 0x2055

    const/4 v12, 0x3

    const/16 v13, 0x27

    :try_start_1
    iget-object v14, v0, LZjTIAZ/UfEmur;->a:Landroid/content/Context;

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_5

    iget-object v14, v0, LZjTIAZ/UfEmur;->b:Landroid/telephony/TelephonyManager;

    if-eqz v14, :cond_5

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getMmsUAProfUrl()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_5

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v15, :cond_5

    goto :goto_7

    :cond_5
    sget v14, LZjTIAZ/UfEmur;->i:I

    if-gt v14, v11, :cond_a

    sget v14, LZjTIAZ/UfEmur;->h:I

    xor-int/lit16 v14, v14, 0x5e9

    if-eqz v14, :cond_7

    :goto_3
    sget v0, LZjTIAZ/UfEmur;->h:I

    add-int/lit8 v1, v0, 0x27

    if-eq v1, v9, :cond_6

    goto :goto_3

    :cond_6
    const v1, 0x1c268

    mul-int/2addr v0, v1

    sput v0, LZjTIAZ/UfEmur;->h:I

    goto :goto_3

    :cond_7
    :goto_4
    sget v14, LZjTIAZ/UfEmur;->i:I

    add-int/lit8 v15, v14, 0x1a

    if-eq v15, v7, :cond_8

    goto :goto_4

    :cond_8
    add-int/2addr v14, v14

    shr-int/lit8 v14, v14, 0x48

    sput v14, LZjTIAZ/UfEmur;->i:I

    sget v14, LZjTIAZ/UfEmur;->h:I

    if-gt v14, v10, :cond_a

    :goto_5
    sget v0, LZjTIAZ/UfEmur;->h:I

    add-int/lit8 v0, v0, 0x1a

    if-eq v0, v13, :cond_9

    goto :goto_5

    :cond_9
    :goto_6
    sget v0, LZjTIAZ/UfEmur;->h:I

    shr-int/2addr v0, v12

    xor-int/lit16 v0, v0, 0xc0b

    sput v0, LZjTIAZ/UfEmur;->h:I

    goto :goto_6

    :catch_1
    :cond_a
    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :goto_7
    invoke-static {v14, v8, v5}, Ld21;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :try_start_2
    iget-object v14, v0, LZjTIAZ/UfEmur;->a:Landroid/content/Context;

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_b

    iget-object v14, v0, LZjTIAZ/UfEmur;->b:Landroid/telephony/TelephonyManager;

    if-eqz v14, :cond_b

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getMmsUserAgent()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_b

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v15, :cond_b

    goto :goto_8

    :catch_2
    :cond_b
    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :goto_8
    invoke-static {v14, v8, v5}, Ld21;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :try_start_3
    iget-object v14, v0, LZjTIAZ/UfEmur;->a:Landroid/content/Context;

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_c

    iget-object v14, v0, LZjTIAZ/UfEmur;->b:Landroid/telephony/TelephonyManager;

    if-eqz v14, :cond_c

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_c

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v15
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-nez v15, :cond_c

    goto :goto_9

    :catch_3
    :cond_c
    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :goto_9
    invoke-static {v14, v8, v5}, Ld21;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const/16 v14, 0x58

    const/4 v15, 0x0

    move/from16 v16, v7

    :try_start_4
    iget-object v7, v0, LZjTIAZ/UfEmur;->a:Landroid/content/Context;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move/from16 v17, v13

    :try_start_5
    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_d

    iget-object v7, v0, LZjTIAZ/UfEmur;->b:Landroid/telephony/TelephonyManager;

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    if-lt v13, v12, :cond_d

    invoke-virtual {v7, v15, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_d

    :cond_d
    sget v7, LZjTIAZ/UfEmur;->i:I

    if-gt v7, v11, :cond_11

    sget v0, LZjTIAZ/UfEmur;->h:I

    if-gt v0, v10, :cond_e

    goto :goto_b

    :cond_e
    :goto_a
    sget v0, LZjTIAZ/UfEmur;->i:I

    add-int/lit8 v1, v0, 0x1a

    const/16 v2, 0x21

    if-eq v1, v2, :cond_f

    goto :goto_a

    :cond_f
    shr-int/lit8 v0, v0, 0x23

    xor-int/lit16 v0, v0, 0x1340

    sput v0, LZjTIAZ/UfEmur;->i:I

    sget v0, LZjTIAZ/UfEmur;->h:I

    if-gt v0, v10, :cond_e

    :goto_b
    sget v0, LZjTIAZ/UfEmur;->h:I

    add-int/lit8 v0, v0, 0x27

    if-eq v0, v14, :cond_10

    goto :goto_b

    :cond_10
    :goto_c
    sget v0, LZjTIAZ/UfEmur;->h:I

    shr-int/lit8 v0, v0, 0x2e

    xor-int/lit16 v0, v0, 0x1099

    mul-int/lit8 v0, v0, 0x6e

    sput v0, LZjTIAZ/UfEmur;->h:I

    goto :goto_c

    :catch_4
    move/from16 v17, v13

    :catch_5
    :cond_11
    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_d
    invoke-static {v7, v8, v5}, Ld21;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :try_start_6
    iget-object v7, v0, LZjTIAZ/UfEmur;->a:Landroid/content/Context;

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_12

    iget-object v7, v0, LZjTIAZ/UfEmur;->b:Landroid/telephony/TelephonyManager;

    if-eqz v7, :cond_12

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_12

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    if-nez v9, :cond_12

    goto :goto_e

    :catch_6
    :cond_12
    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_e
    invoke-static {v7, v8, v5}, Ld21;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v7, v0, LZjTIAZ/UfEmur;->b:Landroid/telephony/TelephonyManager;

    move/from16 v18, v14

    const/16 v19, 0x62

    const/16 v14, 0xdc

    const-string v20, "[K~]\\EA"

    const/16 v21, 0x69

    const/4 v9, 0x1

    const/16 v22, 0x56

    const/4 v15, 0x2

    if-eqz v7, :cond_18

    :try_start_7
    iget-object v6, v0, LZjTIAZ/UfEmur;->a:Landroid/content/Context;

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_18

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v6

    if-eqz v6, :cond_13

    if-eq v6, v9, :cond_17

    if-eq v6, v15, :cond_16

    if-eq v6, v12, :cond_15

    const/16 v7, 0xd

    if-eq v6, v7, :cond_14

    packed-switch v6, :pswitch_data_0

    :cond_13
    invoke-static/range {v20 .. v20}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_15

    :pswitch_0
    const-string v6, "=b5\u001b{a\u007fa8"

    :goto_f
    invoke-static {v6}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_15

    :pswitch_1
    const-string v6, "=b5\u001b{azpP\u0018"

    goto :goto_f

    :pswitch_2
    const-string v6, "=b5\u001b{akpP\u0018"

    goto :goto_f

    :cond_14
    const-string v6, ":b5\u001b\u007ffj\t"

    goto :goto_f

    :cond_15
    const-string v6, "=b5\u001bf\u007f{s8"

    goto :goto_f

    :cond_16
    const-string v6, "<b5\u001bvvhe8"

    goto :goto_f

    :cond_17
    const-string v6, "<b5\u001btb}s8"
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_f

    :cond_18
    sget v6, LZjTIAZ/UfEmur;->i:I

    if-gt v6, v11, :cond_23

    :goto_10
    sget v6, LZjTIAZ/UfEmur;->i:I

    add-int/lit16 v7, v6, 0x9c

    if-eq v7, v12, :cond_22

    const/16 v13, 0x92

    if-eq v7, v13, :cond_1d

    const/16 v13, 0xc1

    if-eq v7, v13, :cond_19

    goto :goto_10

    :cond_19
    add-int/2addr v6, v6

    mul-int/lit8 v6, v6, 0x4d

    xor-int/lit16 v6, v6, 0x13b6

    sput v6, LZjTIAZ/UfEmur;->i:I

    sget v6, LZjTIAZ/UfEmur;->h:I

    if-gt v6, v10, :cond_23

    :goto_11
    sget v0, LZjTIAZ/UfEmur;->h:I

    add-int/lit16 v1, v0, 0x9c

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_1c

    if-eq v1, v14, :cond_1b

    const/16 v2, 0xe6

    if-eq v1, v2, :cond_1a

    goto :goto_11

    :cond_1a
    xor-int/lit16 v1, v0, 0x1325

    add-int/2addr v1, v0

    rem-int/lit8 v1, v1, 0x62

    sput v1, LZjTIAZ/UfEmur;->h:I

    goto :goto_11

    :cond_1b
    add-int v1, v0, v0

    rem-int/lit8 v1, v1, 0x71

    xor-int/lit16 v1, v1, 0x65c

    sput v1, LZjTIAZ/UfEmur;->h:I

    :cond_1c
    sget v1, LZjTIAZ/UfEmur;->h:I

    add-int/2addr v1, v0

    rem-int/2addr v1, v12

    xor-int/lit16 v0, v1, 0x51c

    sput v0, LZjTIAZ/UfEmur;->h:I

    goto :goto_11

    :cond_1d
    sget v0, LZjTIAZ/UfEmur;->i:I

    shr-int/lit8 v0, v0, 0x5

    add-int/2addr v0, v6

    sput v0, LZjTIAZ/UfEmur;->i:I

    sget v0, LZjTIAZ/UfEmur;->h:I

    if-gt v0, v10, :cond_1d

    :goto_12
    sget v0, LZjTIAZ/UfEmur;->h:I

    add-int/lit16 v1, v0, 0xc3

    const/16 v2, 0x32

    if-eq v1, v2, :cond_21

    const/16 v2, 0x40

    if-eq v1, v2, :cond_1e

    const/16 v0, 0xbf

    if-eq v1, v0, :cond_1f

    const/16 v0, 0x17b

    if-eq v1, v0, :cond_20

    goto :goto_12

    :cond_1e
    mul-int/lit8 v1, v0, 0x3d

    add-int/2addr v1, v0

    sput v1, LZjTIAZ/UfEmur;->h:I

    :cond_1f
    sget v0, LZjTIAZ/UfEmur;->h:I

    mul-int/lit8 v0, v0, 0x69

    shr-int/lit8 v0, v0, 0x34

    mul-int/lit8 v0, v0, 0x79

    sput v0, LZjTIAZ/UfEmur;->h:I

    :cond_20
    sget v0, LZjTIAZ/UfEmur;->h:I

    rem-int/lit8 v0, v0, 0x74

    rem-int/lit8 v0, v0, 0x63

    :goto_13
    sput v0, LZjTIAZ/UfEmur;->h:I

    goto :goto_12

    :cond_21
    shr-int/lit8 v0, v0, 0x1a

    mul-int/lit8 v0, v0, 0x7c

    rem-int/lit8 v0, v0, 0x27

    goto :goto_13

    :cond_22
    :goto_14
    sget v0, LZjTIAZ/UfEmur;->i:I

    add-int/2addr v0, v6

    rem-int/lit8 v0, v0, 0x56

    xor-int/lit16 v0, v0, 0x11db

    sput v0, LZjTIAZ/UfEmur;->i:I

    goto :goto_14

    :catch_7
    :cond_23
    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_15
    invoke-static {v6, v8, v5}, Ld21;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v6, v0, LZjTIAZ/UfEmur;->b:Landroid/telephony/TelephonyManager;

    if-eqz v6, :cond_24

    :try_start_8
    iget-object v7, v0, LZjTIAZ/UfEmur;->a:Landroid/content/Context;

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_24

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_17

    :cond_24
    sget v6, LZjTIAZ/UfEmur;->i:I

    if-gt v6, v11, :cond_27

    :goto_16
    sget v6, LZjTIAZ/UfEmur;->i:I

    add-int/lit8 v7, v6, 0x1a

    const/16 v13, 0x47

    if-eq v7, v13, :cond_25

    if-eq v7, v14, :cond_26

    goto :goto_16

    :cond_25
    shr-int/lit8 v6, v6, 0x19

    mul-int/lit8 v6, v6, 0x11

    sput v6, LZjTIAZ/UfEmur;->i:I

    :cond_26
    sget v6, LZjTIAZ/UfEmur;->i:I

    rem-int/lit8 v6, v6, 0x56

    xor-int/lit16 v6, v6, 0xb35

    sput v6, LZjTIAZ/UfEmur;->i:I

    :catch_8
    :cond_27
    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_17
    invoke-static {v6, v8, v5}, Ld21;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v6, v0, LZjTIAZ/UfEmur;->b:Landroid/telephony/TelephonyManager;

    if-eqz v6, :cond_2c

    :try_start_9
    iget-object v7, v0, LZjTIAZ/UfEmur;->a:Landroid/content/Context;

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2c

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v6

    if-eqz v6, :cond_2b

    if-eq v6, v9, :cond_2a

    if-eq v6, v15, :cond_29

    if-eq v6, v12, :cond_28

    invoke-static/range {v20 .. v20}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_19

    :cond_28
    const-string v6, "XJ\\c\u0013\u001a|iA\u0018"

    :goto_18
    invoke-static {v6}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_19

    :cond_29
    const-string v6, "MaXr"

    goto :goto_18

    :cond_2a
    const-string v6, "IvX"

    goto :goto_18

    :cond_2b
    const-string v6, "@J5c[]AE1cTX\\Y"
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_18

    :catch_9
    :cond_2c
    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_19
    invoke-static {v6, v8, v5}, Ld21;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v6, v0, LZjTIAZ/UfEmur;->b:Landroid/telephony/TelephonyManager;

    if-eqz v6, :cond_2d

    :try_start_a
    iget-object v7, v0, LZjTIAZ/UfEmur;->a:Landroid/content/Context;

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2d

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2d

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2d

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v6
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_1a

    :catch_a
    :cond_2d
    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_1a
    invoke-static {v6, v8, v5}, Ld21;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v6, v0, LZjTIAZ/UfEmur;->b:Landroid/telephony/TelephonyManager;

    :try_start_b
    iget-object v7, v0, LZjTIAZ/UfEmur;->a:Landroid/content/Context;

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2e

    if-eqz v6, :cond_2e

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2e

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2e

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v12, :cond_2e

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_1b

    :catch_b
    :cond_2e
    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1b
    invoke-static {v2, v8, v5}, Ld21;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :try_start_c
    iget-object v2, v0, LZjTIAZ/UfEmur;->a:Landroid/content/Context;

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2f

    iget-object v2, v0, LZjTIAZ/UfEmur;->b:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    if-nez v6, :cond_2f

    goto :goto_1d

    :cond_2f
    sget v2, LZjTIAZ/UfEmur;->h:I

    xor-int/lit16 v2, v2, 0x5e9

    if-eqz v2, :cond_33

    :goto_1c
    sget v2, LZjTIAZ/UfEmur;->h:I

    add-int/lit8 v6, v2, 0x1a

    const/4 v7, 0x7

    if-eq v6, v7, :cond_32

    const/16 v7, 0x1d

    if-eq v6, v7, :cond_31

    const/16 v7, 0x73

    if-eq v6, v7, :cond_30

    goto :goto_1c

    :cond_30
    xor-int/lit16 v2, v2, 0x54b

    mul-int/lit8 v2, v2, 0x65

    sput v2, LZjTIAZ/UfEmur;->h:I

    goto :goto_1c

    :cond_31
    xor-int/lit16 v2, v2, 0x10b9

    mul-int/lit8 v2, v2, 0x61

    shr-int/lit8 v2, v2, 0x44

    sput v2, LZjTIAZ/UfEmur;->h:I

    :cond_32
    sget v2, LZjTIAZ/UfEmur;->h:I

    rem-int/lit8 v2, v2, 0x4

    shr-int/lit8 v2, v2, 0x61

    rem-int/lit8 v2, v2, 0x5f

    sput v2, LZjTIAZ/UfEmur;->h:I

    :catch_c
    :cond_33
    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1d
    invoke-static {v2, v8, v5}, Ld21;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :try_start_d
    iget-object v2, v0, LZjTIAZ/UfEmur;->a:Landroid/content/Context;

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_34

    iget-object v2, v0, LZjTIAZ/UfEmur;->b:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_34

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_1e

    :catch_d
    :cond_34
    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1e
    invoke-static {v2, v8, v5}, Ld21;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const/16 v2, 0x3e

    :try_start_e
    iget-object v6, v0, LZjTIAZ/UfEmur;->a:Landroid/content/Context;

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_35

    iget-object v6, v0, LZjTIAZ/UfEmur;->b:Landroid/telephony/TelephonyManager;

    if-eqz v6, :cond_35

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_21

    :cond_35
    sget v6, LZjTIAZ/UfEmur;->h:I

    xor-int/lit16 v6, v6, 0x5e9

    if-eqz v6, :cond_37

    :goto_1f
    sget v0, LZjTIAZ/UfEmur;->h:I

    add-int/lit8 v0, v0, 0x1a

    if-eq v0, v2, :cond_36

    goto :goto_1f

    :cond_36
    :goto_20
    sget v0, LZjTIAZ/UfEmur;->h:I

    rem-int/lit8 v0, v0, 0x23

    xor-int/lit16 v0, v0, 0x1184

    shr-int/2addr v0, v15

    sput v0, LZjTIAZ/UfEmur;->h:I

    goto :goto_20

    :catch_e
    :cond_37
    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_21
    invoke-static {v6, v8, v5}, Ld21;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :try_start_f
    iget-object v6, v0, LZjTIAZ/UfEmur;->a:Landroid/content/Context;

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_38

    iget-object v6, v0, LZjTIAZ/UfEmur;->b:Landroid/telephony/TelephonyManager;

    if-eqz v6, :cond_38

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isHearingAidCompatibilitySupported()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_22

    :catch_f
    :cond_38
    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_22
    invoke-static {v6, v8, v5}, Ld21;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const/16 v6, 0x55

    :try_start_10
    iget-object v7, v0, LZjTIAZ/UfEmur;->a:Landroid/content/Context;

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_39

    iget-object v7, v0, LZjTIAZ/UfEmur;->b:Landroid/telephony/TelephonyManager;

    if-eqz v7, :cond_39

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    goto/16 :goto_27

    :cond_39
    sget v7, LZjTIAZ/UfEmur;->i:I

    xor-int/lit16 v7, v7, 0x2056

    if-eqz v7, :cond_45

    sget v0, LZjTIAZ/UfEmur;->h:I

    if-gt v0, v10, :cond_3a

    goto :goto_25

    :cond_3a
    :goto_23
    sget v0, LZjTIAZ/UfEmur;->i:I

    add-int/lit8 v1, v0, 0x1a

    move/from16 v7, v22

    if-eq v1, v7, :cond_3d

    const/16 v3, 0x96

    if-eq v1, v3, :cond_40

    const/16 v3, 0xe1

    if-eq v1, v3, :cond_3c

    :cond_3b
    move/from16 v22, v7

    goto :goto_23

    :cond_3c
    rem-int/lit8 v1, v0, 0x20

    add-int/2addr v1, v0

    sput v1, LZjTIAZ/UfEmur;->i:I

    sget v0, LZjTIAZ/UfEmur;->h:I

    xor-int/lit16 v0, v0, 0x5e9

    if-eqz v0, :cond_40

    goto :goto_24

    :cond_3d
    mul-int/lit8 v1, v0, 0x1a

    add-int/2addr v1, v0

    rem-int/lit8 v1, v1, 0x67

    sput v1, LZjTIAZ/UfEmur;->i:I

    sget v0, LZjTIAZ/UfEmur;->h:I

    xor-int/lit16 v0, v0, 0x5e9

    if-eqz v0, :cond_40

    :goto_24
    sget v0, LZjTIAZ/UfEmur;->h:I

    add-int/lit8 v1, v0, 0x41

    const/16 v3, 0x4f

    if-eq v1, v3, :cond_3f

    const/16 v3, 0xd1

    if-eq v1, v3, :cond_3e

    goto :goto_24

    :cond_3e
    rem-int/lit8 v0, v0, 0x6b

    rem-int/lit8 v0, v0, 0x38

    sput v0, LZjTIAZ/UfEmur;->h:I

    goto :goto_24

    :cond_3f
    xor-int/lit16 v0, v0, 0xf45

    shr-int/lit8 v0, v0, 0x5f

    rem-int/lit8 v0, v0, 0x76

    sput v0, LZjTIAZ/UfEmur;->h:I

    :cond_40
    sget v0, LZjTIAZ/UfEmur;->i:I

    rem-int/lit8 v0, v0, 0x5f

    shr-int/lit8 v0, v0, 0x2f

    sput v0, LZjTIAZ/UfEmur;->i:I

    sget v0, LZjTIAZ/UfEmur;->h:I

    xor-int/lit16 v0, v0, 0x5e9

    if-eqz v0, :cond_3b

    :goto_25
    sget v0, LZjTIAZ/UfEmur;->h:I

    add-int/lit8 v1, v0, 0x27

    if-eq v1, v6, :cond_43

    const/16 v3, 0x81

    if-eq v1, v3, :cond_42

    const/16 v3, 0x94

    if-eq v1, v3, :cond_44

    const/16 v0, 0x158

    if-eq v1, v0, :cond_41

    goto :goto_25

    :cond_41
    :goto_26
    sget v0, LZjTIAZ/UfEmur;->h:I

    mul-int/lit8 v0, v0, 0x5c

    shr-int/lit8 v0, v0, 0x1b

    rem-int/lit8 v0, v0, 0x45

    sput v0, LZjTIAZ/UfEmur;->h:I

    goto :goto_26

    :cond_42
    mul-int/lit8 v1, v0, 0x4e

    shr-int/2addr v1, v2

    sput v1, LZjTIAZ/UfEmur;->h:I

    :cond_43
    sget v1, LZjTIAZ/UfEmur;->h:I

    rem-int/lit8 v1, v1, 0x24

    mul-int/lit8 v1, v1, 0x44

    sput v1, LZjTIAZ/UfEmur;->h:I

    :cond_44
    sget v1, LZjTIAZ/UfEmur;->h:I

    xor-int/lit8 v1, v1, 0x3d

    add-int/2addr v1, v0

    sput v1, LZjTIAZ/UfEmur;->h:I

    goto :goto_25

    :catch_10
    :cond_45
    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_27
    invoke-static {v2, v8, v5}, Ld21;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :try_start_11
    iget-object v2, v0, LZjTIAZ/UfEmur;->a:Landroid/content/Context;

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_46

    iget-object v2, v0, LZjTIAZ/UfEmur;->b:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_46

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_28

    :catch_11
    :cond_46
    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_28
    invoke-static {v2, v8, v5}, Ld21;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v2, v0, LZjTIAZ/UfEmur;->a:Landroid/content/Context;

    :try_start_12
    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_47

    iget-object v7, v0, LZjTIAZ/UfEmur;->b:Landroid/telephony/TelephonyManager;

    if-eqz v7, :cond_47

    const-string v7, "z@yVP]B"

    invoke-static {v7}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isTtySupported()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_12

    goto :goto_2d

    :cond_47
    sget v2, LZjTIAZ/UfEmur;->h:I

    xor-int/lit16 v2, v2, 0x5e9

    if-eqz v2, :cond_4c

    :goto_29
    sget v0, LZjTIAZ/UfEmur;->h:I

    add-int/lit8 v1, v0, 0x27

    const/16 v2, 0x5e

    if-eq v1, v2, :cond_4b

    const/16 v2, 0xeb

    if-eq v1, v2, :cond_4a

    const/16 v2, 0x199

    if-eq v1, v2, :cond_49

    const/16 v2, 0x22e

    if-eq v1, v2, :cond_48

    goto :goto_29

    :cond_48
    xor-int/lit16 v0, v0, 0x5b9

    mul-int/lit8 v0, v0, 0x7c

    :goto_2a
    sput v0, LZjTIAZ/UfEmur;->h:I

    goto :goto_29

    :cond_49
    :goto_2b
    sget v0, LZjTIAZ/UfEmur;->h:I

    mul-int/lit8 v0, v0, 0x1e

    rem-int/lit8 v0, v0, 0x63

    shr-int/lit8 v0, v0, 0x34

    sput v0, LZjTIAZ/UfEmur;->h:I

    goto :goto_2b

    :cond_4a
    :goto_2c
    sget v0, LZjTIAZ/UfEmur;->h:I

    mul-int/lit8 v0, v0, 0x3f

    xor-int/lit16 v0, v0, 0x757

    sput v0, LZjTIAZ/UfEmur;->h:I

    goto :goto_2c

    :cond_4b
    shr-int/lit8 v0, v0, 0x7d

    shr-int/lit8 v0, v0, 0x65

    goto :goto_2a

    :catch_12
    :cond_4c
    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2d
    invoke-static {v2, v8, v5}, Ld21;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :try_start_13
    iget-object v2, v0, LZjTIAZ/UfEmur;->a:Landroid/content/Context;

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4d

    iget-object v2, v0, LZjTIAZ/UfEmur;->b:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_4d

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_13

    goto :goto_2e

    :catch_13
    :cond_4d
    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2e
    invoke-static {v2, v8, v5}, Ld21;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :try_start_14
    iget-object v2, v0, LZjTIAZ/UfEmur;->a:Landroid/content/Context;

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4e

    iget-object v2, v0, LZjTIAZ/UfEmur;->b:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_4e

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isWorldPhone()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_14

    goto :goto_2f

    :catch_14
    :cond_4e
    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2f
    invoke-static {v2, v8, v5}, Ld21;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :try_start_15
    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_15

    if-eqz v2, :cond_4f

    goto :goto_31

    :cond_4f
    sget v2, LZjTIAZ/UfEmur;->i:I

    xor-int/lit16 v2, v2, 0x2056

    if-eqz v2, :cond_51

    :goto_30
    sget v0, LZjTIAZ/UfEmur;->i:I

    add-int/lit8 v1, v0, 0x1a

    if-eq v1, v6, :cond_50

    goto :goto_30

    :cond_50
    mul-int/lit8 v0, v0, 0x12

    shr-int/lit8 v0, v0, 0x17

    rem-int/lit8 v0, v0, 0x5f

    sput v0, LZjTIAZ/UfEmur;->i:I

    goto :goto_30

    :catch_15
    :cond_51
    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_31
    invoke-static {v2, v8, v5}, Ld21;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :try_start_16
    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_52

    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_16

    goto :goto_35

    :cond_52
    sget v2, LZjTIAZ/UfEmur;->i:I

    xor-int/lit16 v2, v2, 0x2056

    if-eqz v2, :cond_58

    :goto_32
    sget v0, LZjTIAZ/UfEmur;->i:I

    add-int/lit8 v1, v0, 0x1a

    const/16 v2, 0x4e

    if-eq v1, v2, :cond_54

    const/16 v2, 0xf7

    if-eq v1, v2, :cond_57

    const/16 v2, 0x146

    if-eq v1, v2, :cond_53

    const/16 v0, 0x1aa

    if-eq v1, v0, :cond_55

    goto :goto_32

    :cond_53
    :goto_33
    sget v1, LZjTIAZ/UfEmur;->i:I

    mul-int/lit16 v1, v1, 0xec0

    add-int/2addr v1, v0

    sput v1, LZjTIAZ/UfEmur;->i:I

    goto :goto_33

    :cond_54
    shr-int/lit8 v1, v0, 0x4

    add-int/2addr v1, v0

    sput v1, LZjTIAZ/UfEmur;->i:I

    :cond_55
    sget v0, LZjTIAZ/UfEmur;->i:I

    xor-int/lit16 v0, v0, 0x4bf

    rem-int/lit8 v0, v0, 0x4b

    xor-int/lit16 v0, v0, 0x12b6

    sput v0, LZjTIAZ/UfEmur;->i:I

    sget v0, LZjTIAZ/UfEmur;->h:I

    xor-int/lit16 v0, v0, 0x5e9

    if-eqz v0, :cond_57

    :goto_34
    sget v0, LZjTIAZ/UfEmur;->h:I

    add-int/lit8 v1, v0, 0x41

    const/16 v2, 0x18

    if-eq v1, v2, :cond_56

    goto :goto_34

    :cond_56
    shr-int/lit8 v1, v0, 0x6f

    mul-int/lit8 v1, v1, 0x7e

    add-int/2addr v1, v0

    sput v1, LZjTIAZ/UfEmur;->h:I

    goto :goto_34

    :cond_57
    sget v0, LZjTIAZ/UfEmur;->i:I

    xor-int/lit16 v0, v0, 0x14ee

    mul-int/lit8 v0, v0, 0x61

    rem-int/lit8 v0, v0, 0x48

    sput v0, LZjTIAZ/UfEmur;->i:I

    goto :goto_32

    :catch_16
    :cond_58
    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_35
    invoke-static {v2, v8, v5}, Ld21;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :try_start_17
    iget-object v2, v0, LZjTIAZ/UfEmur;->a:Landroid/content/Context;

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5a

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_59

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3d

    :cond_59
    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_17

    goto/16 :goto_3d

    :cond_5a
    sget v2, LZjTIAZ/UfEmur;->i:I

    if-gt v2, v11, :cond_62

    :goto_36
    sget v2, LZjTIAZ/UfEmur;->i:I

    add-int/lit8 v0, v2, 0x27

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_5d

    move/from16 v3, v21

    if-eq v0, v3, :cond_5c

    const/16 v4, 0x78

    if-eq v0, v4, :cond_5b

    const/16 v4, 0x122

    if-eq v0, v4, :cond_5e

    :goto_37
    move/from16 v21, v3

    goto :goto_36

    :cond_5b
    shr-int/lit8 v0, v2, 0x24

    rem-int/lit8 v0, v0, 0x70

    sput v0, LZjTIAZ/UfEmur;->i:I

    goto :goto_38

    :cond_5c
    xor-int/lit16 v0, v2, 0x154f

    add-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x44

    sput v0, LZjTIAZ/UfEmur;->i:I

    goto :goto_37

    :cond_5d
    :goto_38
    sget v0, LZjTIAZ/UfEmur;->i:I

    shr-int/lit8 v0, v0, 0x24

    rem-int/lit8 v0, v0, 0x58

    sput v0, LZjTIAZ/UfEmur;->i:I

    sget v0, LZjTIAZ/UfEmur;->h:I

    xor-int/lit16 v0, v0, 0x5e9

    if-eqz v0, :cond_5e

    const/16 v23, 0x32

    goto :goto_3a

    :cond_5e
    :goto_39
    sget v0, LZjTIAZ/UfEmur;->i:I

    rem-int/lit8 v0, v0, 0x44

    add-int/2addr v0, v2

    const/16 v23, 0x32

    rem-int/lit8 v0, v0, 0x32

    sput v0, LZjTIAZ/UfEmur;->i:I

    sget v0, LZjTIAZ/UfEmur;->h:I

    if-gt v0, v10, :cond_5e

    :goto_3a
    sget v0, LZjTIAZ/UfEmur;->h:I

    add-int/lit8 v1, v0, 0x68

    move/from16 v3, v19

    if-eq v1, v3, :cond_61

    const/16 v4, 0x10f

    if-eq v1, v4, :cond_60

    const/16 v0, 0x13a

    if-eq v1, v0, :cond_5f

    goto :goto_3c

    :cond_5f
    :goto_3b
    sget v0, LZjTIAZ/UfEmur;->h:I

    mul-int/lit8 v0, v0, 0x6a

    rem-int/lit8 v0, v0, 0x71

    shr-int/2addr v0, v12

    sput v0, LZjTIAZ/UfEmur;->h:I

    goto :goto_3b

    :cond_60
    add-int/2addr v0, v0

    rem-int/lit8 v0, v0, 0x43

    sput v0, LZjTIAZ/UfEmur;->h:I

    :goto_3c
    move/from16 v19, v3

    goto :goto_3a

    :cond_61
    xor-int/lit16 v0, v0, 0x356

    sput v0, LZjTIAZ/UfEmur;->h:I

    move/from16 v19, v3

    goto :goto_39

    :catch_17
    :cond_62
    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3d
    invoke-static {v2, v8, v5}, Ld21;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :try_start_18
    sget-object v2, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_64

    const-string v2, ""

    const/4 v3, 0x0

    :goto_3e
    sget-object v6, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v7, v6

    if-ge v3, v7, :cond_63

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v6, v3

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    :cond_63
    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_18

    goto :goto_42

    :cond_64
    sget v2, LZjTIAZ/UfEmur;->i:I

    xor-int/lit16 v2, v2, 0x2056

    if-eqz v2, :cond_67

    :goto_3f
    sget v2, LZjTIAZ/UfEmur;->i:I

    add-int/lit8 v0, v2, 0x34

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_65

    goto :goto_3f

    :cond_65
    sget v0, LZjTIAZ/UfEmur;->i:I

    rem-int/lit8 v0, v0, 0x5c

    add-int/2addr v0, v2

    sput v0, LZjTIAZ/UfEmur;->i:I

    sget v0, LZjTIAZ/UfEmur;->h:I

    if-gt v0, v10, :cond_65

    :goto_40
    sget v0, LZjTIAZ/UfEmur;->h:I

    add-int/lit8 v1, v0, 0x4e

    const/16 v2, 0x10

    if-eq v1, v2, :cond_66

    goto :goto_40

    :cond_66
    :goto_41
    sget v1, LZjTIAZ/UfEmur;->h:I

    shr-int/lit8 v1, v1, 0x54

    add-int/2addr v1, v0

    sput v1, LZjTIAZ/UfEmur;->h:I

    goto :goto_41

    :catch_18
    :cond_67
    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_42
    invoke-static {v2, v8, v5}, Ld21;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :try_start_19
    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_69

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_43
    sget-object v6, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v7, v6

    if-ge v3, v7, :cond_68

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v6, v3

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    :cond_68
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_19

    goto :goto_44

    :catch_19
    :cond_69
    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_44
    invoke-static {v1, v8, v5}, Ld21;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :try_start_1a
    sget-wide v1, Landroid/os/Build;->TIME:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1a

    goto :goto_45

    :catch_1a
    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_45
    invoke-static {v1, v8, v5}, Ld21;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :try_start_1b
    sget v1, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1b

    goto :goto_46

    :catch_1b
    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_46
    invoke-static {v1, v8, v5}, Ld21;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :try_start_1c
    sget-object v1, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1c

    if-eqz v1, :cond_6a

    goto :goto_47

    :catch_1c
    :cond_6a
    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_47
    invoke-static {v1}, LZjTIAZ/DeHqqG;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v1, 0x3f800000    # 1.0f

    :try_start_1d
    iget-object v2, v0, LZjTIAZ/UfEmur;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oK|^RF@RNU@NTB^WGuXOLBJ"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1d

    goto :goto_48

    :catch_1d
    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_48
    invoke-static {v2}, LZjTIAZ/DeHqqG;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_1e
    iget-object v2, v0, LZjTIAZ/UfEmur;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oPa\\lFFMt"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v9, :cond_6b

    move v2, v9

    goto :goto_49

    :cond_6b
    const/4 v2, 0x0

    :goto_49
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1e

    goto :goto_4a

    :catch_1e
    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_4a
    invoke-static {v2}, LZjTIAZ/DeHqqG;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_1f
    iget-object v2, v0, LZjTIAZ/UfEmur;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oPa\\lFFMtnOS[S"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v9, :cond_6c

    goto :goto_4b

    :cond_6c
    const/4 v9, 0x0

    :goto_4b
    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1f

    goto :goto_4c

    :catch_1f
    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_4c
    invoke-static {v2}, LZjTIAZ/DeHqqG;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_20
    iget-object v2, v0, LZjTIAZ/UfEmur;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "zWt]@[[I~_j][_ZY]CDBr]LQMG"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_20

    goto :goto_4d

    :catch_20
    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4d
    invoke-static {v1}, LZjTIAZ/DeHqqG;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_21
    iget-object v1, v0, LZjTIAZ/UfEmur;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "yD|GlT@RNUP^@QP]["

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    invoke-static {v1, v2, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_21

    goto :goto_4e

    :catch_21
    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4e
    invoke-static {v1}, LZjTIAZ/DeHqqG;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, LZjTIAZ/UfEmur;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LZjTIAZ/DeHqqG;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, LZjTIAZ/UfEmur;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LZjTIAZ/DeHqqG;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_22
    iget-object v1, v0, LZjTIAZ/UfEmur;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_22

    goto :goto_4f

    :catch_22
    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4f
    invoke-static {v1}, LZjTIAZ/DeHqqG;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, LZjTIAZ/UfEmur;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LZjTIAZ/DeHqqG;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, LZjTIAZ/UfEmur;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LZjTIAZ/DeHqqG;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p1}, LZjTIAZ/UfEmur;->d(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LZjTIAZ/DeHqqG;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LZjTIAZ/UfEmur;->e:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, LZjTIAZ/UfEmur;->c:Ljava/lang/Boolean;

    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object p0, p0, LZjTIAZ/UfEmur;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "|QalPSCLx_RcXYS]"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "#\u0014"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v0, "#\u0014"

    if-eqz p1, :cond_0

    :try_start_1
    iget-object p1, p0, LZjTIAZ/UfEmur;->g:Ljava/lang/String;

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, LZjTIAZ/UfEmur$QjtvJE;

    invoke-direct {v0, p0}, LZjTIAZ/UfEmur$QjtvJE;-><init>(LZjTIAZ/UfEmur;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object p1, p0, LZjTIAZ/UfEmur;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LZjTIAZ/UfEmur;->g:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    :try_start_3
    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LZjTIAZ/UfEmur;->g:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_1
    :goto_0
    iget-object p0, p0, LZjTIAZ/UfEmur;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 4

    :try_start_0
    iget-object p0, p0, LZjTIAZ/UfEmur;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, ""

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LZjTIAZ/DeHqqG;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_2
    sget p0, LZjTIAZ/UfEmur;->h:I

    xor-int/lit16 p0, p0, 0x5e9

    if-eqz p0, :cond_5

    :goto_1
    sget p0, LZjTIAZ/UfEmur;->h:I

    add-int/lit8 v0, p0, 0x41

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_3

    const/16 p0, 0xaa

    if-eq v0, p0, :cond_4

    goto :goto_1

    :cond_3
    mul-int/lit8 p0, p0, 0x26

    shr-int/lit8 p0, p0, 0x4c

    xor-int/lit16 p0, p0, 0x68e

    sput p0, LZjTIAZ/UfEmur;->h:I

    :cond_4
    sget p0, LZjTIAZ/UfEmur;->h:I

    mul-int/lit8 p0, p0, 0x76

    rem-int/lit8 p0, p0, 0x7a

    sput p0, LZjTIAZ/UfEmur;->h:I

    :catch_0
    :cond_5
    const-string p0, "#\u0014"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final f()V
    .locals 5

    const-string v0, "#\u0014"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OKqA\\[K\u0000"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".dEz\u0013"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, ","

    invoke-static {v2, v3, v1}, Ld21;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v2, v3, v1}, Ld21;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :try_start_2
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    const v4, 0xea60

    div-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-static {v2, v3, v1}, Ld21;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :try_start_3
    iget-object v2, p0, LZjTIAZ/UfEmur;->a:Landroid/content/Context;

    invoke-static {v2}, LZjTIAZ/UfEmur;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :cond_0
    sget v2, LZjTIAZ/UfEmur;->i:I

    xor-int/lit16 v2, v2, 0x2056

    if-eqz v2, :cond_4

    :goto_3
    sget p0, LZjTIAZ/UfEmur;->i:I

    add-int/lit8 v0, p0, 0x1a

    const/16 v1, 0xe

    if-eq v0, v1, :cond_3

    const/16 v1, 0x55

    if-eq v0, v1, :cond_2

    const/16 v1, 0x118

    if-eq v0, v1, :cond_1

    goto :goto_3

    :cond_1
    :goto_4
    sget v0, LZjTIAZ/UfEmur;->i:I

    add-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x2b

    rem-int/lit8 v0, v0, 0x14

    sput v0, LZjTIAZ/UfEmur;->i:I

    goto :goto_4

    :cond_2
    :goto_5
    sget p0, LZjTIAZ/UfEmur;->i:I

    shr-int/lit8 p0, p0, 0x5

    mul-int/lit8 p0, p0, 0x75

    sput p0, LZjTIAZ/UfEmur;->i:I

    goto :goto_5

    :cond_3
    :goto_6
    sget p0, LZjTIAZ/UfEmur;->i:I

    mul-int/lit8 p0, p0, 0x47

    rem-int/lit8 p0, p0, 0x5a

    rem-int/lit8 p0, p0, 0x32

    sput p0, LZjTIAZ/UfEmur;->i:I

    goto :goto_6

    :catch_3
    :cond_4
    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-static {v0, v3, v1}, Ld21;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :try_start_4
    iget-object v0, p0, LZjTIAZ/UfEmur;->a:Landroid/content/Context;

    const-string v2, "yLsZ"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_a

    :cond_5
    sget v0, LZjTIAZ/UfEmur;->h:I

    const/16 v2, 0x5e8

    if-gt v0, v2, :cond_8

    :goto_8
    sget p0, LZjTIAZ/UfEmur;->h:I

    add-int/lit8 v0, p0, 0x1a

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_7

    const/16 v1, 0xd4

    if-eq v0, v1, :cond_6

    goto :goto_8

    :cond_6
    shr-int/lit8 v0, p0, 0x5d

    add-int/2addr v0, p0

    add-int/2addr v0, p0

    sput v0, LZjTIAZ/UfEmur;->h:I

    goto :goto_8

    :cond_7
    :goto_9
    sget p0, LZjTIAZ/UfEmur;->h:I

    mul-int/lit8 p0, p0, 0x4f

    xor-int/lit16 p0, p0, 0x72c

    sput p0, LZjTIAZ/UfEmur;->h:I

    goto :goto_9

    :catch_4
    :cond_8
    const-string v0, ">\u000b%\u001d\u0003\u001c\u001f"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-static {v0}, LZjTIAZ/DeHqqG;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LZjTIAZ/UfEmur;->f:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, LZjTIAZ/UfEmur;->d:Ljava/lang/Boolean;

    return-void
.end method

.method public final declared-synchronized g()Ljava/lang/String;
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, LZjTIAZ/UfEmur;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LZjTIAZ/UfEmur;->e:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, LZjTIAZ/UfEmur;->b(Ljava/lang/Boolean;)V

    :cond_1
    iget-object v0, p0, LZjTIAZ/UfEmur;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized h()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LZjTIAZ/UfEmur;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LZjTIAZ/UfEmur;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, LZjTIAZ/UfEmur;->f()V

    :cond_1
    iget-object v0, p0, LZjTIAZ/UfEmur;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final i()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object p0, p0, LZjTIAZ/UfEmur;->a:Landroid/content/Context;

    invoke-static {p0}, LZjTIAZ/UfEmur;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    const-string v0, ""

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    const-string p0, "#\u0014"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object p0, p0, LZjTIAZ/UfEmur;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lI`VG]@TynQUFUXNLXJNDBFDX"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "#\u0014"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
