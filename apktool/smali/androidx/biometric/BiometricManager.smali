.class public Landroidx/biometric/BiometricManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/BiometricManager$Api29Impl;,
        Landroidx/biometric/BiometricManager$Api30Impl;,
        Landroidx/biometric/BiometricManager$DefaultInjector;,
        Landroidx/biometric/BiometricManager$Injector;,
        Landroidx/biometric/BiometricManager$Authenticators;
    }
.end annotation


# instance fields
.field public final a:Landroidx/biometric/BiometricManager$DefaultInjector;

.field public final b:Landroid/hardware/biometrics/BiometricManager;

.field public final c:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;


# direct methods
.method public constructor <init>(Landroidx/biometric/BiometricManager$DefaultInjector;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/biometric/BiometricManager;->a:Landroidx/biometric/BiometricManager$DefaultInjector;

    iget-object p1, p1, Landroidx/biometric/BiometricManager$DefaultInjector;->a:Landroid/content/Context;

    invoke-static {p1}, Landroidx/biometric/BiometricManager$Api29Impl;->b(Landroid/content/Context;)Landroid/hardware/biometrics/BiometricManager;

    move-result-object p1

    iput-object p1, p0, Landroidx/biometric/BiometricManager;->b:Landroid/hardware/biometrics/BiometricManager;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-gt p1, v0, :cond_0

    new-instance p1, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroidx/biometric/BiometricManager;->c:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    return-void
.end method

.method public static b(Landroid/content/Context;)Landroidx/biometric/BiometricManager;
    .locals 2

    new-instance v0, Landroidx/biometric/BiometricManager;

    new-instance v1, Landroidx/biometric/BiometricManager$DefaultInjector;

    invoke-direct {v1, p0}, Landroidx/biometric/BiometricManager$DefaultInjector;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Landroidx/biometric/BiometricManager;-><init>(Landroidx/biometric/BiometricManager$DefaultInjector;)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x1

    iget-object v3, p0, Landroidx/biometric/BiometricManager;->b:Landroid/hardware/biometrics/BiometricManager;

    if-lt v0, v1, :cond_1

    if-nez v3, :cond_0

    return v2

    :cond_0
    const/16 p0, 0xff

    invoke-static {v3, p0}, Landroidx/biometric/BiometricManager$Api30Impl;->a(Landroid/hardware/biometrics/BiometricManager;I)I

    move-result p0

    return p0

    :cond_1
    iget-object v1, p0, Landroidx/biometric/BiometricManager;->a:Landroidx/biometric/BiometricManager$DefaultInjector;

    iget-object v1, v1, Landroidx/biometric/BiometricManager$DefaultInjector;->a:Landroid/content/Context;

    invoke-static {v1}, Landroidx/biometric/KeyguardUtils$Api23Impl;->a(Landroid/content/Context;)Landroid/app/KeyguardManager;

    move-result-object v1

    const/16 v4, 0xc

    if-eqz v1, :cond_4

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_3

    if-nez v3, :cond_2

    return v2

    :cond_2
    invoke-static {v3}, Landroidx/biometric/BiometricManager$Api29Impl;->a(Landroid/hardware/biometrics/BiometricManager;)I

    move-result p0

    return p0

    :cond_3
    iget-object p0, p0, Landroidx/biometric/BiometricManager;->c:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v4
.end method
