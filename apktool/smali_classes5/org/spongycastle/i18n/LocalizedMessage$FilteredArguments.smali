.class public Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/i18n/LocalizedMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FilteredArguments"
.end annotation


# instance fields
.field public final a:[Z

.field public final b:[I

.field public final c:[Ljava/lang/Object;

.field public final d:[Ljava/lang/Object;

.field public final e:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 95
    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;-><init>([Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;->c:[Ljava/lang/Object;

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;->d:[Ljava/lang/Object;

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;->e:[Ljava/lang/Object;

    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;->a:[Z

    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;->b:[I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    aget-object v2, p1, v1

    instance-of v3, v2, Lorg/spongycastle/i18n/filter/TrustedInput;

    iget-object v4, p0, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;->d:[Ljava/lang/Object;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/spongycastle/i18n/filter/TrustedInput;

    iget-object v2, v2, Lorg/spongycastle/i18n/filter/TrustedInput;->a:Ljava/lang/Object;

    aput-object v2, v4, v1

    iget-object v2, p0, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;->b:[I

    aput v0, v2, v1

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lorg/spongycastle/i18n/filter/UntrustedInput;

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    check-cast v2, Lorg/spongycastle/i18n/filter/UntrustedInput;

    iget-object v2, v2, Lorg/spongycastle/i18n/filter/UntrustedInput;->a:Ljava/lang/Object;

    aput-object v2, v4, v1

    aget-object v2, p1, v1

    instance-of v2, v2, Lorg/spongycastle/i18n/filter/UntrustedUrlInput;

    iget-object v3, p0, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;->b:[I

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    aput v2, v3, v1

    goto :goto_1

    :cond_1
    aput v5, v3, v1

    goto :goto_1

    :cond_2
    aput-object v2, v4, v1

    iget-object v2, p0, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;->b:[I

    aput v5, v2, v1

    :goto_1
    iget-object v2, p0, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;->a:[Z

    iget-object v3, p0, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;->d:[Ljava/lang/Object;

    aget-object v3, v3, v1

    instance-of v3, v3, Lorg/spongycastle/i18n/LocaleString;

    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Locale;)[Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;->d:[Ljava/lang/Object;

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;->e:[Ljava/lang/Object;

    aget-object v4, v3, v2

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    aget-object v4, v0, v2

    iget-object v5, p0, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;->a:[Z

    aget-boolean v5, v5, v2

    iget-object v6, p0, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;->b:[I

    if-eqz v5, :cond_1

    check-cast v4, Lorg/spongycastle/i18n/LocaleString;

    const/4 v3, 0x0

    invoke-virtual {v4, v3, p1, v3}, Lorg/spongycastle/i18n/LocalizedMessage;->b(Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v4

    aget v3, v6, v2

    goto :goto_1

    :cond_1
    aget v5, v6, v2

    aput-object v4, v3, v2

    :goto_1
    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method
