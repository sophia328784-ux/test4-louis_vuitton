.class public Lorg/spongycastle/i18n/LocalizedMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage;->c:Ljava/lang/String;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 68
    iput-object p2, p0, Lorg/spongycastle/i18n/LocalizedMessage;->a:Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->b:Ljava/lang/String;

    .line 70
    new-instance p1, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-direct {p1}, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->d:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 71
    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage;->c:Ljava/lang/String;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 51
    iput-object p2, p0, Lorg/spongycastle/i18n/LocalizedMessage;->a:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->b:Ljava/lang/String;

    .line 53
    new-instance p1, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-direct {p1}, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->d:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    .line 54
    invoke-static {p3}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 55
    iput-object p3, p0, Lorg/spongycastle/i18n/LocalizedMessage;->c:Ljava/lang/String;

    return-void

    .line 56
    :cond_0
    new-instance p0, Ljava/io/UnsupportedEncodingException;

    const-string p1, "The encoding \""

    const-string p2, "\" is not supported."

    .line 57
    invoke-static {p1, p3, p2}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-direct {p0, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    .line 59
    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage;->c:Ljava/lang/String;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    iput-object p2, p0, Lorg/spongycastle/i18n/LocalizedMessage;->a:Ljava/lang/String;

    iput-object p1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->b:Ljava/lang/String;

    new-instance p1, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-direct {p1, p4}, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;-><init>([Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->d:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-static {p3}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object p3, p0, Lorg/spongycastle/i18n/LocalizedMessage;->c:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/io/UnsupportedEncodingException;

    const-string p1, "The encoding \""

    const-string p2, "\" is not supported."

    invoke-static {p1, p3, p2}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage;->c:Ljava/lang/String;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 62
    iput-object p2, p0, Lorg/spongycastle/i18n/LocalizedMessage;->a:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->b:Ljava/lang/String;

    .line 64
    new-instance p1, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-direct {p1, p3}, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;-><init>([Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->d:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 65
    throw p0
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/Object;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/text/MessageFormat;->setLocale(Ljava/util/Locale;)V

    invoke-virtual {v0, p0}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Ljava/text/MessageFormat;->getFormats()[Ljava/text/Format;

    move-result-object p0

    const/4 p2, 0x0

    :goto_0
    array-length v1, p0

    if-ge p2, v1, :cond_1

    aget-object v1, p0, p2

    instance-of v2, v1, Ljava/text/DateFormat;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/text/DateFormat;

    invoke-virtual {v1, p3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0, p2, v1}, Ljava/text/MessageFormat;->setFormat(ILjava/text/Format;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 8

    const-string v0, "ISO-8859-1"

    iget-object v1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->c:Ljava/lang/String;

    iget-object v4, p0, Lorg/spongycastle/i18n/LocalizedMessage;->b:Ljava/lang/String;

    const-string v2, "."

    iget-object v3, p0, Lorg/spongycastle/i18n/LocalizedMessage;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-static {v3, v2, p1}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    move-object v5, v3

    :try_start_0
    invoke-static {v4, p2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v3, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object p1, v3

    goto :goto_0

    :catch_0
    move-object p0, v2

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/spongycastle/i18n/LocalizedMessage;->d:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    iget-object v0, p0, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;->d:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {p0, p2}, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;->a(Ljava/util/Locale;)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0, p2, p3}, Lorg/spongycastle/i18n/LocalizedMessage;->a(Ljava/lang/String;[Ljava/lang/Object;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    :catch_1
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, Lx1;->m(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0

    :goto_1
    new-instance v2, Lorg/spongycastle/i18n/MissingEntryException;

    const-string p1, "Can\'t find entry "

    const-string p3, " in resource file "

    invoke-static {p1, v5, p3, v4, p0}, Ld21;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/i18n/MissingEntryException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)V

    throw v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Resource: \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\" Id: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\" Arguments: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/spongycastle/i18n/LocalizedMessage;->d:Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;

    iget-object v1, v1, Lorg/spongycastle/i18n/LocalizedMessage$FilteredArguments;->c:[Ljava/lang/Object;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " normal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " Encoding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/spongycastle/i18n/LocalizedMessage;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " ClassLoader: null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
