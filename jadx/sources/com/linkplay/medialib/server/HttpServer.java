package com.linkplay.medialib.server;

import com.linkplay.medialib.ContentNode;
import com.linkplay.medialib.ContentTree;
import com.networkbench.agent.impl.performance.coulometry.a;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Locale;
import java.util.Properties;
import java.util.StringTokenizer;
import java.util.TimeZone;
import java.util.Vector;
import okhttp3.internal.ws.RealWebSocket;

/* JADX INFO: loaded from: classes2.dex */
public class HttpServer {
    public static final String HTTP_BADREQUEST = "400 Bad Request";
    public static final String HTTP_FORBIDDEN = "403 Forbidden";
    public static final String HTTP_INTERNALERROR = "500 Internal Server Error";
    public static final String HTTP_NOTFOUND = "404 Not Found";
    public static final String HTTP_NOTIMPLEMENTED = "501 Not Implemented";
    public static final String HTTP_OK = "200 OK";
    public static final String HTTP_PARTIALCONTENT = "206 Partial Content";
    public static final String HTTP_RANGE_NOT_SATISFIABLE = "416 Requested Range Not Satisfiable";
    public static final String HTTP_REDIRECT = "301 Moved Permanently";
    private static final String LICENCE = "Copyright (C) 2001,2005-2011 by Jarno Elonen <elonen@iki.fi>\nand Copyright (C) 2010 by Konstantinos Togias <info@ktogias.gr>\n\nRedistribution and use in source and binary forms, with or without\nmodification, are permitted provided that the following conditions\nare met:\n\nRedistributions of source code must retain the above copyright notice,\nthis list of conditions and the following disclaimer. Redistributions in\nbinary form must reproduce the above copyright notice, this list of\nconditions and the following disclaimer in the documentation and/or other\nmaterials provided with the distribution. The name of the author may not\nbe used to endorse or promote products derived from this software without\nspecific prior written permission. \n \nTHIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR\nIMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES\nOF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.\nIN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,\nINCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT\nNOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,\nDATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY\nTHEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT\n(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE\nOF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.";
    public static final String MIME_DEFAULT_BINARY = "application/octet-stream";
    public static final String MIME_HTML = "text/html";
    public static final String MIME_PLAINTEXT = "text/plain";
    public static final String MIME_XML = "text/xml";
    private static SimpleDateFormat gmtFrmt;
    private static Hashtable theMimeTypes = new Hashtable();
    private File myRootDir;
    private ServerSocket myServerSocket;
    private int myTcpPort;
    private Thread myThread;

    public class HTTPSession implements Runnable {
        private Socket mySocket;

        public HTTPSession(Socket socket) {
            this.mySocket = socket;
            Thread thread = new Thread(this);
            thread.setDaemon(true);
            thread.start();
        }

        private void decodeHeader(BufferedReader bufferedReader, Properties properties, Properties properties2, Properties properties3) throws InterruptedException {
            String strDecodePercent;
            try {
                String line = bufferedReader.readLine();
                if (line == null) {
                    return;
                }
                StringTokenizer stringTokenizer = new StringTokenizer(line);
                if (!stringTokenizer.hasMoreTokens()) {
                    sendError(HttpServer.HTTP_BADREQUEST, "BAD REQUEST: Syntax error. Usage: GET /example/file.html");
                }
                properties.put("method", stringTokenizer.nextToken());
                if (!stringTokenizer.hasMoreTokens()) {
                    sendError(HttpServer.HTTP_BADREQUEST, "BAD REQUEST: Missing URI. Usage: GET /example/file.html");
                }
                String strNextToken = stringTokenizer.nextToken();
                int iIndexOf = strNextToken.indexOf(63);
                if (iIndexOf >= 0) {
                    decodeParms(strNextToken.substring(iIndexOf + 1), properties2);
                    strDecodePercent = decodePercent(strNextToken.substring(0, iIndexOf));
                } else {
                    strDecodePercent = decodePercent(strNextToken);
                }
                if (stringTokenizer.hasMoreTokens()) {
                    String line2 = bufferedReader.readLine();
                    while (line2 != null && line2.trim().length() > 0) {
                        int iIndexOf2 = line2.indexOf(58);
                        if (iIndexOf2 >= 0) {
                            properties3.put(line2.substring(0, iIndexOf2).trim().toLowerCase(), line2.substring(iIndexOf2 + 1).trim());
                        }
                        line2 = bufferedReader.readLine();
                    }
                }
                properties.put("uri", strDecodePercent);
            } catch (IOException e2) {
                sendError(HttpServer.HTTP_INTERNALERROR, n00.o(e2, new StringBuilder("SERVER INTERNAL ERROR: IOException: ")));
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }

        private void decodeMultipartData(String str, byte[] bArr, BufferedReader bufferedReader, Properties properties, Properties properties2) throws InterruptedException {
            String line;
            int i2;
            try {
                int[] boundaryPositions = getBoundaryPositions(bArr, str.getBytes());
                int i3 = 1;
                for (String line2 = bufferedReader.readLine(); line2 != null; line2 = line) {
                    if (line2.indexOf(str) == -1) {
                        sendError(HttpServer.HTTP_BADREQUEST, "BAD REQUEST: Content type is multipart/form-data but next chunk does not start with boundary. Usage: GET /example/file.html");
                    }
                    int i4 = i3 + 1;
                    Properties properties3 = new Properties();
                    line = bufferedReader.readLine();
                    while (true) {
                        i2 = 0;
                        if (line == null || line.trim().length() <= 0) {
                            break;
                        }
                        int iIndexOf = line.indexOf(58);
                        if (iIndexOf != -1) {
                            properties3.put(line.substring(0, iIndexOf).trim().toLowerCase(), line.substring(iIndexOf + 1).trim());
                        }
                        line = bufferedReader.readLine();
                    }
                    if (line != null) {
                        String property = properties3.getProperty("content-disposition");
                        if (property == null) {
                            sendError(HttpServer.HTTP_BADREQUEST, "BAD REQUEST: Content type is multipart/form-data but no content-disposition info found. Usage: GET /example/file.html");
                        }
                        StringTokenizer stringTokenizer = new StringTokenizer(property, "; ");
                        Properties properties4 = new Properties();
                        while (stringTokenizer.hasMoreTokens()) {
                            String strNextToken = stringTokenizer.nextToken();
                            int iIndexOf2 = strNextToken.indexOf(61);
                            if (iIndexOf2 != -1) {
                                properties4.put(strNextToken.substring(i2, iIndexOf2).trim().toLowerCase(), strNextToken.substring(iIndexOf2 + 1).trim());
                            }
                            i2 = 0;
                        }
                        String property2 = properties4.getProperty("name");
                        String strSubstring = property2.substring(1, property2.length() - 1);
                        String strSubstring2 = "";
                        if (properties3.getProperty("content-type") != null) {
                            if (i4 > boundaryPositions.length) {
                                sendError(HttpServer.HTTP_INTERNALERROR, "Error processing request");
                            }
                            int iStripMultipartHeaders = stripMultipartHeaders(bArr, boundaryPositions[i3 - 1]);
                            properties2.put(strSubstring, saveTmpFile(bArr, iStripMultipartHeaders, (boundaryPositions[i3] - iStripMultipartHeaders) - 4));
                            String property3 = properties4.getProperty("filename");
                            strSubstring2 = property3.substring(1, property3.length() - 1);
                            do {
                                line = bufferedReader.readLine();
                                if (line == null) {
                                    break;
                                }
                            } while (line.indexOf(str) == -1);
                        } else {
                            while (line != null && line.indexOf(str) == -1) {
                                line = bufferedReader.readLine();
                                if (line != null) {
                                    int iIndexOf3 = line.indexOf(str);
                                    strSubstring2 = iIndexOf3 == -1 ? strSubstring2 + line : strSubstring2 + line.substring(0, iIndexOf3 - 2);
                                }
                            }
                        }
                        properties.put(strSubstring, strSubstring2);
                    }
                    i3 = i4;
                }
            } catch (IOException e2) {
                sendError(HttpServer.HTTP_INTERNALERROR, n00.o(e2, new StringBuilder("SERVER INTERNAL ERROR: IOException: ")));
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }

        private void decodeParms(String str, Properties properties) throws InterruptedException {
            if (str == null) {
                return;
            }
            StringTokenizer stringTokenizer = new StringTokenizer(str, "&");
            while (stringTokenizer.hasMoreTokens()) {
                String strNextToken = stringTokenizer.nextToken();
                int iIndexOf = strNextToken.indexOf(61);
                if (iIndexOf >= 0) {
                    properties.put(decodePercent(strNextToken.substring(0, iIndexOf)).trim(), decodePercent(strNextToken.substring(iIndexOf + 1)));
                }
            }
        }

        private String decodePercent(String str) throws InterruptedException {
            try {
                StringBuffer stringBuffer = new StringBuffer();
                int i2 = 0;
                while (i2 < str.length()) {
                    char cCharAt = str.charAt(i2);
                    if (cCharAt == '%') {
                        stringBuffer.append((char) Integer.parseInt(str.substring(i2 + 1, i2 + 3), 16));
                        i2 += 2;
                    } else if (cCharAt != '+') {
                        stringBuffer.append(cCharAt);
                    } else {
                        stringBuffer.append(' ');
                    }
                    i2++;
                }
                return stringBuffer.toString();
            } catch (Exception unused) {
                sendError(HttpServer.HTTP_BADREQUEST, "BAD REQUEST: Bad percent-encoding.");
                return null;
            }
        }

        private String saveTmpFile(byte[] bArr, int i2, int i3) {
            if (i3 > 0) {
                try {
                    File fileCreateTempFile = File.createTempFile("NanoHTTPD", "", new File(System.getProperty("java.io.tmpdir")));
                    FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
                    fileOutputStream.write(bArr, i2, i3);
                    fileOutputStream.close();
                    return fileCreateTempFile.getAbsolutePath();
                } catch (Exception e2) {
                    System.err.println("Error: " + e2.getMessage());
                }
            }
            return "";
        }

        private void sendError(String str, String str2) throws InterruptedException {
            sendResponse(str, HttpServer.MIME_PLAINTEXT, null, new ByteArrayInputStream(str2.getBytes()));
            throw new InterruptedException();
        }

        private synchronized void sendResponse(String str, String str2, Properties properties, InputStream inputStream) {
            try {
                try {
                    try {
                        if (str == null) {
                            throw new Error("sendResponse(): Status can't be null.");
                        }
                        OutputStream outputStream = this.mySocket.getOutputStream();
                        PrintWriter printWriter = new PrintWriter(outputStream);
                        printWriter.print("HTTP/1.0 " + str + " \r\n");
                        if (str2 != null) {
                            printWriter.print("Content-Type: " + str2 + "\r\n");
                        }
                        if (properties == null || properties.getProperty("Date") == null) {
                            printWriter.print("Date: " + HttpServer.gmtFrmt.format(new Date()) + "\r\n");
                        }
                        if (properties != null) {
                            Enumeration enumerationKeys = properties.keys();
                            while (enumerationKeys.hasMoreElements()) {
                                String str3 = (String) enumerationKeys.nextElement();
                                printWriter.print(str3 + ": " + properties.getProperty(str3) + "\r\n");
                            }
                        }
                        printWriter.print("\r\n");
                        printWriter.flush();
                        if (inputStream != null) {
                            int iAvailable = inputStream.available();
                            byte[] bArr = new byte[2048];
                            while (iAvailable > 0) {
                                int i2 = inputStream.read(bArr, 0, iAvailable > 2048 ? 2048 : iAvailable);
                                if (i2 <= 0) {
                                    break;
                                }
                                outputStream.write(bArr, 0, i2);
                                iAvailable -= i2;
                            }
                        }
                        outputStream.flush();
                        outputStream.close();
                        if (inputStream != null) {
                            inputStream.close();
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                } catch (Exception unused) {
                    Socket socket = this.mySocket;
                    if (socket != null) {
                        socket.close();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }

        /* JADX WARN: Code duplicated, block: B:13:0x001e A[PHI: r3
          0x001e: PHI (r3v4 int) = (r3v3 int), (r3v5 int) binds: [B:7:0x000f, B:9:0x0015] A[DONT_GENERATE, DONT_INLINE]] */
        private int stripMultipartHeaders(byte[] bArr, int i2) {
            while (i2 < bArr.length) {
                if (bArr[i2] == 13) {
                    int i3 = i2 + 1;
                    if (bArr[i3] == 10) {
                        i3 = i2 + 2;
                        if (bArr[i3] == 13) {
                            i2 += 3;
                            if (bArr[i2] == 10) {
                                break;
                            }
                        } else {
                            i2 = i3;
                        }
                    } else {
                        i2 = i3;
                    }
                }
                i2++;
            }
            return i2 + 1;
        }

        public int[] getBoundaryPositions(byte[] bArr, byte[] bArr2) {
            Vector vector = new Vector();
            int i2 = 0;
            int i3 = 0;
            int i4 = -1;
            while (i2 < bArr.length) {
                if (bArr[i2] == bArr2[i3]) {
                    if (i3 == 0) {
                        i4 = i2;
                    }
                    i3++;
                    if (i3 == bArr2.length) {
                        vector.addElement(new Integer(i4));
                    }
                    i2++;
                } else {
                    i2 -= i3;
                }
                i3 = 0;
                i4 = -1;
                i2++;
            }
            int size = vector.size();
            int[] iArr = new int[size];
            for (int i5 = 0; i5 < size; i5++) {
                iArr[i5] = ((Integer) vector.elementAt(i5)).intValue();
            }
            return iArr;
        }

        @Override // java.lang.Runnable
        public void run() {
            byte[] bArr;
            int i2;
            long j2;
            long j3;
            boolean z;
            Properties properties;
            try {
                InputStream inputStream = this.mySocket.getInputStream();
                if (inputStream != null && (i2 = inputStream.read((bArr = new byte[8192]), 0, 8192)) > 0) {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(bArr, 0, i2)));
                    Properties properties2 = new Properties();
                    Properties properties3 = new Properties();
                    Properties properties4 = new Properties();
                    Properties properties5 = new Properties();
                    decodeHeader(bufferedReader, properties2, properties3, properties4);
                    String property = properties2.getProperty("method");
                    String property2 = properties2.getProperty("uri");
                    String property3 = properties4.getProperty("content-length");
                    if (property3 != null) {
                        try {
                            j2 = Integer.parseInt(property3);
                        } catch (NumberFormatException unused) {
                            j2 = Long.MAX_VALUE;
                        }
                    } else {
                        j2 = Long.MAX_VALUE;
                    }
                    int i3 = 0;
                    while (true) {
                        if (i3 >= i2) {
                            j3 = Long.MAX_VALUE;
                            z = false;
                            break;
                        }
                        j3 = Long.MAX_VALUE;
                        if (bArr[i3] == 13) {
                            int i4 = i3 + 1;
                            if (bArr[i4] == 10) {
                                int i5 = i3 + 2;
                                if (bArr[i5] == 13) {
                                    i3 += 3;
                                    if (bArr[i3] == 10) {
                                        z = true;
                                        break;
                                    }
                                } else {
                                    i3 = i5;
                                }
                            } else {
                                i3 = i4;
                            }
                        }
                        i3++;
                    }
                    int i6 = i3 + 1;
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    if (i6 < i2) {
                        byteArrayOutputStream.write(bArr, i6, i2 - i6);
                    }
                    if (i6 < i2) {
                        j2 -= (long) ((i2 - i6) + 1);
                    } else if (!z || j2 == j3) {
                        j2 = 0;
                    }
                    int i7 = 512;
                    byte[] bArr2 = new byte[512];
                    while (i2 >= 0 && j2 > 0) {
                        int i8 = inputStream.read(bArr2, 0, i7);
                        j2 -= (long) i8;
                        if (i8 > 0) {
                            byteArrayOutputStream.write(bArr2, 0, i8);
                        }
                        i2 = i8;
                        i7 = 512;
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(byteArray)));
                    if (property.equalsIgnoreCase("POST")) {
                        StringTokenizer stringTokenizer = new StringTokenizer(properties4.getProperty("content-type"), "; ");
                        String str = "";
                        if ((stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : "").equalsIgnoreCase("multipart/form-data")) {
                            if (!stringTokenizer.hasMoreTokens()) {
                                sendError(HttpServer.HTTP_BADREQUEST, "BAD REQUEST: Content type is multipart/form-data but boundary missing. Usage: GET /example/file.html");
                            }
                            StringTokenizer stringTokenizer2 = new StringTokenizer(stringTokenizer.nextToken(), "=");
                            if (stringTokenizer2.countTokens() != 2) {
                                sendError(HttpServer.HTTP_BADREQUEST, "BAD REQUEST: Content type is multipart/form-data but boundary syntax error. Usage: GET /example/file.html");
                            }
                            stringTokenizer2.nextToken();
                            String strNextToken = stringTokenizer2.nextToken();
                            properties = properties3;
                            decodeMultipartData(strNextToken, byteArray, bufferedReader2, properties, properties5);
                            properties5 = properties5;
                        } else {
                            properties = properties3;
                            char[] cArr = new char[512];
                            for (int i9 = bufferedReader2.read(cArr); i9 >= 0 && !str.endsWith("\r\n"); i9 = bufferedReader2.read(cArr)) {
                                str = str + String.valueOf(cArr, 0, i9);
                            }
                            decodeParms(str.trim(), properties);
                        }
                    } else {
                        properties = properties3;
                    }
                    Response responseServe = HttpServer.this.serve(property2, property, properties4, properties, properties5);
                    if (responseServe == null) {
                        sendError(HttpServer.HTTP_INTERNALERROR, "SERVER INTERNAL ERROR: Serve() returned a null response.");
                    } else {
                        sendResponse(responseServe.status, responseServe.mimeType, responseServe.header, responseServe.data);
                    }
                    bufferedReader2.close();
                    inputStream.close();
                }
            } catch (IOException e2) {
                try {
                    sendError(HttpServer.HTTP_INTERNALERROR, "SERVER INTERNAL ERROR: IOException: " + e2.getMessage());
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            } catch (InterruptedException e3) {
                e3.printStackTrace();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    static {
        StringTokenizer stringTokenizer = new StringTokenizer("css\t\ttext/css js\t\t\ttext/javascript htm\t\ttext/html html\t\ttext/html txt\t\ttext/plain asc\t\ttext/plain gif\t\timage/gif jpg\t\timage/jpeg jpeg\t\timage/jpeg png\t\timage/png mp3\t\taudio/mpeg m3u\t\taudio/mpeg-url pdf\t\tapplication/pdf doc\t\tapplication/msword ogg\t\tapplication/x-ogg zip\t\tapplication/octet-stream exe\t\tapplication/octet-stream class\t\tapplication/octet-stream ");
        while (stringTokenizer.hasMoreTokens()) {
            theMimeTypes.put(stringTokenizer.nextToken(), stringTokenizer.nextToken());
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("E, d MMM yyyy HH:mm:ss 'GMT'", Locale.US);
        gmtFrmt = simpleDateFormat;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
    }

    public HttpServer(int i2) {
        this.myTcpPort = i2;
        createServerSocket();
        MediaServer.port = this.myTcpPort;
        if (this.myServerSocket == null) {
            return;
        }
        this.myRootDir = new File("/");
        Thread thread = new Thread(new Runnable() { // from class: com.linkplay.medialib.server.HttpServer.1
            @Override // java.lang.Runnable
            public void run() {
                while (true) {
                    try {
                        System.out.println("HttpServer:HttpServer: ServerSocket accept ");
                        HttpServer httpServer = HttpServer.this;
                        httpServer.new HTTPSession(httpServer.myServerSocket.accept());
                    } catch (Exception e2) {
                        System.out.println("HttpServer:HttpServer: new HTTPSession Error:" + e2);
                        e2.printStackTrace();
                        return;
                    }
                }
            }
        });
        this.myThread = thread;
        thread.setDaemon(true);
        this.myThread.start();
    }

    private String encodeUri(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, "/ ", true);
        String strConcat = "";
        while (stringTokenizer.hasMoreTokens()) {
            String strNextToken = stringTokenizer.nextToken();
            if (strNextToken.equals("/")) {
                strConcat = strConcat.concat("/");
            } else if (strNextToken.equals(" ")) {
                strConcat = strConcat.concat("%20");
            } else {
                StringBuilder sbT = n00.t(strConcat);
                sbT.append(URLEncoder.encode(strNextToken));
                strConcat = sbT.toString();
            }
        }
        return strConcat;
    }

    public void createServerSocket() {
        System.out.println("HttpServer:createServerSocket: listen port:" + this.myTcpPort);
        try {
            this.myServerSocket = new ServerSocket(this.myTcpPort);
        } catch (IOException e2) {
            System.out.println("HttpServer:createServerSocket: error :" + e2);
            int i2 = this.myTcpPort + 1;
            this.myTcpPort = i2;
            if (i2 < 11284) {
                createServerSocket();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x00c1  */
    public Response serve(String str, String str2, Properties properties, Properties properties2, Properties properties3) {
        String fullPath;
        System.out.println(str2 + " '" + str + "' ");
        Enumeration<?> enumerationPropertyNames = properties.propertyNames();
        while (enumerationPropertyNames.hasMoreElements()) {
            String str3 = (String) enumerationPropertyNames.nextElement();
            PrintStream printStream = System.out;
            StringBuilder sbR = pq0.r("  HDR: '", str3, "' = '");
            sbR.append(properties.getProperty(str3));
            sbR.append("'");
            printStream.println(sbR.toString());
        }
        Enumeration<?> enumerationPropertyNames2 = properties2.propertyNames();
        while (enumerationPropertyNames2.hasMoreElements()) {
            String str4 = (String) enumerationPropertyNames2.nextElement();
            PrintStream printStream2 = System.out;
            StringBuilder sbR2 = pq0.r("  PRM: '", str4, "' = '");
            sbR2.append(properties2.getProperty(str4));
            sbR2.append("'");
            printStream2.println(sbR2.toString());
        }
        Enumeration<?> enumerationPropertyNames3 = properties3.propertyNames();
        while (enumerationPropertyNames3.hasMoreElements()) {
            String str5 = (String) enumerationPropertyNames3.nextElement();
            PrintStream printStream3 = System.out;
            StringBuilder sbR3 = pq0.r("  UPLOADED: '", str5, "' = '");
            sbR3.append(properties3.getProperty(str5));
            sbR3.append("'");
            printStream3.println(sbR3.toString());
        }
        String strDecode = URLDecoder.decode(str.replaceFirst("/", ""));
        if (ContentTree.hasNode(strDecode)) {
            ContentNode node = ContentTree.getNode(strDecode);
            if (node.isItem()) {
                fullPath = node.getFullPath();
            } else {
                fullPath = null;
            }
        } else {
            fullPath = null;
        }
        if (fullPath != null) {
            str = fullPath;
        }
        return serveFile(str, properties, this.myRootDir, false);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00b7 A[PHI: r2 r9
      0x00b7: PHI (r2v5 com.linkplay.medialib.server.HttpServer$Response) = 
      (r2v4 com.linkplay.medialib.server.HttpServer$Response)
      (r2v4 com.linkplay.medialib.server.HttpServer$Response)
      (r2v27 com.linkplay.medialib.server.HttpServer$Response)
      (r2v27 com.linkplay.medialib.server.HttpServer$Response)
      (r2v27 com.linkplay.medialib.server.HttpServer$Response)
     binds: [B:25:0x0073, B:27:0x0079, B:31:0x009d, B:38:0x00c8, B:34:0x00ac] A[DONT_GENERATE, DONT_INLINE]
      0x00b7: PHI (r9v1 java.io.File) = (r9v0 java.io.File), (r9v0 java.io.File), (r9v0 java.io.File), (r9v4 java.io.File), (r9v5 java.io.File) binds: [B:25:0x0073, B:27:0x0079, B:31:0x009d, B:38:0x00c8, B:34:0x00ac] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r33v0, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r33v1 */
    /* JADX WARN: Type inference failed for: r33v10 */
    /* JADX WARN: Type inference failed for: r33v16 */
    /* JADX WARN: Type inference failed for: r33v17 */
    /* JADX WARN: Type inference failed for: r33v2 */
    /* JADX WARN: Type inference failed for: r33v21 */
    /* JADX WARN: Type inference failed for: r33v22 */
    /* JADX WARN: Type inference failed for: r33v23 */
    /* JADX WARN: Type inference failed for: r33v3 */
    /* JADX WARN: Type inference failed for: r33v4 */
    /* JADX WARN: Type inference failed for: r33v7 */
    /* JADX WARN: Type inference failed for: r33v9 */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.String] */
    public Response serveFile(String str, Properties properties, File file, boolean z) {
        String strConcat;
        Response response;
        long j2;
        long j3;
        long j4;
        final long j5;
        String[] strArr;
        String strJ;
        String[] strArr2;
        String strG;
        int iLastIndexOf;
        Response response2 = !file.isDirectory() ? new Response(HTTP_INTERNALERROR, MIME_PLAINTEXT, "INTERNAL ERRROR: serveFile(): given homeDir is not a directory.") : null;
        ?? r6 = HTTP_FORBIDDEN;
        if (response2 == null) {
            strConcat = str.trim().replace(File.separatorChar, '/');
            if (strConcat.indexOf(63) >= 0) {
                strConcat = strConcat.substring(0, strConcat.indexOf(63));
            }
            if (strConcat.startsWith("..") || strConcat.endsWith("..") || strConcat.indexOf("../") >= 0) {
                response2 = new Response(HTTP_FORBIDDEN, MIME_PLAINTEXT, "FORBIDDEN: Won't serve ../ for security reasons.");
            }
        } else {
            strConcat = str;
        }
        File file2 = new File((File) file, strConcat);
        if (response2 == null && !file2.exists()) {
            response2 = new Response(HTTP_NOTFOUND, MIME_PLAINTEXT, "Error 404, file not found.");
        }
        boolean z2 = true;
        if (response2 == null && file2.isDirectory()) {
            if (!strConcat.endsWith("/")) {
                strConcat = strConcat.concat("/");
                response2 = new Response(HTTP_REDIRECT, MIME_HTML, d21.l("<html><body>Redirected: <a href=\"", strConcat, "\">", strConcat, "</a></body></html>"));
                response2.addHeader(a.f37790a, strConcat);
            }
            if (response2 != null) {
                r6 = file;
            } else {
                if (new File(file2, "index.html").exists()) {
                    file2 = new File((File) file, strConcat.concat("/index.html"));
                } else if (new File(file2, "index.htm").exists()) {
                    file2 = new File((File) file, strConcat.concat("/index.htm"));
                } else if (z && file2.canRead()) {
                    String[] list = file2.list();
                    String strH = fc.h("<html><body><h1>Directory ", strConcat, "</h1><br/>");
                    if (strConcat.length() > 1 && (iLastIndexOf = (strG = o60.g(1, 0, strConcat)).lastIndexOf(47)) >= 0 && iLastIndexOf < strG.length()) {
                        StringBuilder sbU = n00.u(strH, "<b><a href=\"");
                        sbU.append(strConcat.substring(0, iLastIndexOf + 1));
                        sbU.append("\">..</a></b><br/>");
                        strH = sbU.toString();
                    }
                    if (list != null) {
                        int i2 = 0;
                        String[] strArr3 = list;
                        file = file;
                        while (i2 < strArr3.length) {
                            File file3 = new File(file2, strArr3[i2]);
                            boolean zIsDirectory = file3.isDirectory();
                            boolean z3 = z2;
                            if (zIsDirectory) {
                                strH = strH.concat("<b>");
                                strArr3[i2] = n00.r(strArr3[i2], "/", new StringBuilder());
                            }
                            StringBuilder sbU2 = n00.u(strH, "<a href=\"");
                            StringBuilder sbT = n00.t(strConcat);
                            sbT.append(strArr3[i2]);
                            sbU2.append(encodeUri(sbT.toString()));
                            sbU2.append("\">");
                            String strR = n00.r(strArr3[i2], "</a>", sbU2);
                            if (file3.isFile()) {
                                long length = file3.length();
                                String strConcat2 = strR.concat(" &nbsp;<font size=2>(");
                                if (length < RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE) {
                                    strJ = strConcat2 + length + " bytes";
                                    strArr2 = strArr3;
                                } else {
                                    String[] strArr4 = strArr3;
                                    if (length < 1048576) {
                                        StringBuilder sbT2 = n00.t(strConcat2);
                                        sbT2.append(length / RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE);
                                        sbT2.append(FileUtils.HIDDEN_PREFIX);
                                        strJ = o60.j(((length % RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE) / 10) % 100, " KB", sbT2);
                                        strArr2 = strArr4;
                                    } else {
                                        StringBuilder sbT3 = n00.t(strConcat2);
                                        sbT3.append(length / 1048576);
                                        sbT3.append(FileUtils.HIDDEN_PREFIX);
                                        strJ = o60.j(((length % 1048576) / 10) % 100, " MB", sbT3);
                                        strArr2 = strArr4;
                                    }
                                }
                                strR = strJ.concat(")</font>");
                                strArr = strArr2;
                            } else {
                                strArr = strArr3;
                            }
                            String strConcat3 = strR.concat("<br/>");
                            if (zIsDirectory) {
                                strConcat3 = strConcat3.concat("</b>");
                            }
                            strH = strConcat3;
                            i2++;
                            z2 = z3;
                            strArr3 = strArr;
                            file = strArr;
                        }
                    }
                    response2 = new Response(HTTP_OK, MIME_HTML, strH.concat("</body></html>"));
                    r6 = file;
                } else {
                    response2 = new Response(HTTP_FORBIDDEN, MIME_PLAINTEXT, "FORBIDDEN: No directory listing.");
                    r6 = file;
                }
                r6 = file;
            }
        } else {
            r6 = file;
        }
        if (response2 == null) {
            try {
                int iLastIndexOf2 = file2.getCanonicalPath().lastIndexOf(46);
                String str2 = iLastIndexOf2 >= 0 ? (String) theMimeTypes.get(file2.getCanonicalPath().substring(iLastIndexOf2 + 1).toLowerCase()) : null;
                if (str2 == null) {
                    str2 = "application/octet-stream";
                }
                String property = properties.getProperty("range");
                long j6 = -1;
                if (property == null || !property.startsWith("bytes=")) {
                    j2 = 0;
                    j3 = 0;
                } else {
                    property = property.substring(6);
                    int iIndexOf = property.indexOf(45);
                    if (iIndexOf > 0) {
                        try {
                            j3 = Long.parseLong(property.substring(0, iIndexOf));
                            try {
                                j6 = Long.parseLong(property.substring(iIndexOf + 1));
                            } catch (NumberFormatException unused) {
                            }
                        } catch (NumberFormatException unused2) {
                            j3 = 0;
                        }
                    } else {
                        j3 = 0;
                    }
                    j2 = 0;
                }
                long length2 = file2.length();
                try {
                    if (property == null || j3 < j2) {
                        Response response3 = new Response(HTTP_OK, str2, new FileInputStream(file2));
                        response3.addHeader("Content-Length", "" + length2);
                        response2 = response3;
                    } else if (j3 >= length2) {
                        response2 = new Response(HTTP_RANGE_NOT_SATISFIABLE, MIME_PLAINTEXT, "");
                        response2.addHeader("Content-Range", "bytes 0-0/" + length2);
                    } else {
                        if (j6 < j2) {
                            j6 = length2 - 1;
                        }
                        long j7 = (j6 - j3) + 1;
                        if (j7 < j2) {
                            j5 = j2;
                            j4 = length2;
                        } else {
                            j4 = length2;
                            j5 = j7;
                        }
                        try {
                            FileInputStream fileInputStream = new FileInputStream(file2) { // from class: com.linkplay.medialib.server.HttpServer.2
                                @Override // java.io.FileInputStream, java.io.InputStream
                                public int available() throws IOException {
                                    return (int) j5;
                                }
                            };
                            fileInputStream.skip(j3);
                            Response response4 = new Response(HTTP_PARTIALCONTENT, str2, fileInputStream);
                            response4.addHeader("Content-Length", "" + j5);
                            response4.addHeader("Content-Range", "bytes " + j3 + "-" + j6 + "/" + j4);
                            response2 = response4;
                        } catch (Exception unused3) {
                            r6 = r6;
                            response = new Response((String) r6, MIME_PLAINTEXT, "FORBIDDEN: Reading file failed.");
                        }
                    }
                } catch (Exception unused4) {
                }
            } catch (Exception unused5) {
                r6 = HTTP_FORBIDDEN;
            }
        }
        response = response2;
        response.addHeader("Accept-Ranges", "bytes");
        return response;
    }

    public void stop() {
        try {
            this.myServerSocket.close();
            this.myThread.join();
        } catch (IOException | InterruptedException unused) {
        }
    }

    public class Response {
        public InputStream data;
        public Properties header;
        public String mimeType;
        public String status;

        public Response(String str, String str2, String str3) {
            this.header = new Properties();
            this.status = str;
            this.mimeType = str2;
            try {
                this.data = new ByteArrayInputStream(str3.getBytes("UTF-8"));
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
            }
        }

        public void addHeader(String str, String str2) {
            this.header.put(str, str2);
        }

        public Response(String str, String str2, InputStream inputStream) {
            this.header = new Properties();
            this.status = str;
            this.mimeType = str2;
            this.data = inputStream;
        }

        public Response() {
            this.header = new Properties();
            this.status = HttpServer.HTTP_OK;
        }
    }
}
