(function () {
   const GA_MEASUREMENT_ID = "G-0Y7Y4XLQHD";
   const script = document.createElement("script");
   script.async = true;
   script.src = `https://www.googletagmanager.com/gtag/js?id=${GA_MEASUREMENT_ID}`;
   document.head.appendChild(script);

   window.dataLayer = window.dataLayer || [];
   function gtag() {
      window.dataLayer.push(arguments);
   }

   window.gtag = gtag;
   window.gtag("js", new Date());
   window.gtag("config", GA_MEASUREMENT_ID);
})();
